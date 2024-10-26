<?php
use App\Models\Activity;
use Illuminate\Database\Eloquent\Factories\Factory;
use Carbon\Carbon;

class ActivityFactory extends Factory
{
    protected $model = Activity::class;

    public function definition()
    {
        return [
            'user_id' => User::factory(), // Creates a new user for each activity, or you can link to an existing user
            'points' => 20,
            'activity_date' => Carbon::now()->subDays(rand(0, 365)), // Random date within the last year
        ];
    }
}

