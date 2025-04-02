<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MonthSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $months=[
            ['name'=>'January'],
            ['name'=>'Fibruary'],
            ['name'=>'March'],
            ['name'=>'April'],
            ['name'=>'May'],
            ['name'=>'June'],
            ['name'=>'July'],
            ['name'=>'Augest'],
            ['name'=>'September'],
            ['name'=>'October'],
            ['name'=>'November'],
            ['name'=>'December'],

        ];
        DB::table('month_names')->insert($months);
    }
}
