<?php

namespace Database\Seeders;

use App\Models\Activity;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create 10 dummy users
        User::factory()->count(10)->create()->each(function ($user) {
            // For each user, create random activities
            for ($i = 0; $i < rand(5, 15); $i++) {
                Activity::create([
                    'user_id' => $user->id,
                    'points' => 20,
                    'activity_date' => Carbon::now()->subDays(rand(0, 365))->format('Y-m-d H:i:s'), // Random date within the last year
                ]);
            }
        });
    }
}
