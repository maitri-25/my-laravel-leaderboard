<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class LeaderboardController extends Controller
{
    public function calculateTotalPointsAndRank(): void
    {
        // Calculate total points for each user
        $users = User::with('activities')->get();

        foreach ($users as $user) {
            $totalPoints = $user->activities->sum('points');
            $user->update(['total_points' => $totalPoints]);
        }

        // Rank users by total_points in descending order
        $rankedUsers = User::orderBy('total_points', 'desc')->get();

        $rank = 1;
        $prevPoints = null;
        foreach ($rankedUsers as $user) {
            if ($prevPoints !== null && $user->total_points < $prevPoints) {
                $rank++;
            }
            $user->update(['rank' => $rank]);
            $prevPoints = $user->total_points;
        }
    }

    public function filterLeaderboard(Request $request)
    {
        $filter = $request->input('filter', 'day');
        $userId = $request->input('user_id');

        $query = Activity::query();

        // Apply date filtering based on the selected filter
        if ($filter === 'day') {
            $query->whereDate('activity_date', Carbon::today());
        } elseif ($filter === 'month') {
            $query->whereMonth('activity_date', Carbon::now()->month)
                ->whereYear('activity_date', Carbon::now()->year);
        } elseif ($filter === 'year') {
            $query->whereYear('activity_date', Carbon::now()->year);
        }

        // Filter by user ID if provided
        if ($userId) {
            $query->where('user_id', $userId);
        }

        // Get activities
        $activities = $query->get();

        // Calculate points for each user based on filtered activities
        $userPoints = [];

        foreach ($activities as $activity) {
            $userId = $activity->user_id;
            $points = $activity->points;

            if (!isset($userPoints[$userId])) {
                $userPoints[$userId] = 0;
            }
            $userPoints[$userId] += $points;
        }

        // Calculate ranks and update the database
        $rank = 0;
        $previousPoints = null;
        $leaderBoard = [];
        foreach ($userPoints as $userId => $totalPoints) {
            if ($previousPoints === null || $totalPoints !== $previousPoints) {
                $rank++;
            }
            $userData = User::find($userId);
            // Store user details with rank
            $leaderBoard[] = [
                'id' => $userId,
                'name' => $userData['name'],
                'total_points' => $totalPoints,
                'rank' => $rank
            ];

            $previousPoints = $totalPoints;
        }

        // Update the rank in the database
        if(!empty($leaderBoard)) {
            foreach ($leaderBoard as $user) {
                User::where('id', $user['id'])->update(['rank' => $user['rank']]);
            }
        }

        // Render the leaderboard view with the data
        return view('leaderboard', compact('leaderBoard'));
    }

    public function recalculate()
    {
        $this->calculateTotalPointsAndRank();

        // Redirect back to the leaderboard view
        return redirect()->route('leaderboard.index');
    }
}
