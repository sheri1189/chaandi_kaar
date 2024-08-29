<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuantityUnit extends Model
{
    use HasFactory;
    protected $fillable = [
        "quantity_unit",
        "added_from",
    ];
}
