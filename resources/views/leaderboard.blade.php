<!-- resources/views/leaderboard.blade.php -->
@extends('layouts.app')

@section('content')
    <div class="leaderboard">
        <form action="{{ route('leaderboard.recalculate') }}" method="POST">
            @csrf
            <button type="submit" class="btn btn-primary">Recalculate</button>
        </form>

        <form method="GET" action="{{ route('leaderboard.index') }}" class="mt-3">
            <!-- Search bar for user ID -->
            <div class="form-group">
                <label for="user_id">User ID:</label>
                <input type="text" id="user_id" name="user_id" class="form-control" placeholder="Enter User ID" value="{{ request('user_id') }}">
                <button type="submit" class="btn btn-secondary mt-2">Filter</button>
            </div>

            <!-- Filter dropdown -->
            <div class="form-group mt-3">
                <label for="filter">Sort by:</label>
                <select name="filter" id="filter" class="form-control" onchange="this.form.submit()">
                    <option value="day" {{ request('filter') == 'day' ? 'selected' : '' }}>Today</option>
                    <option value="month" {{ request('filter') == 'month' ? 'selected' : '' }}>This Month</option>
                    <option value="year" {{ request('filter') == 'year' ? 'selected' : '' }}>This Year</option>
                </select>
            </div>
        </form>

        <!-- Leaderboard Table -->
        <table class="table mt-5">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Total Points</th>
                <th>Rank</th>
            </tr>
            </thead>
            <tbody>
            @if($leaderBoard)
            @foreach ($leaderBoard as $user)
                <tr>
                    <td>{{ $user['id'] }}</td>
                    <td>{{ $user['name'] }}</td>
                    <td>{{ $user['total_points'] }}</td>
                    <td>#{{ $user['rank'] }}</td>
                </tr>
            @endforeach
            @else
                <h1>No Data Found.</h1>
            @endif
            </tbody>
        </table>
    </div>
@endsection
