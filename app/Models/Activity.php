<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Activity extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'points', 'activity_date'];

    // An activity belongs to a user
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
