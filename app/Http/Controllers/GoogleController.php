<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Laravel\Socialite\Facades\Socialite;

class GoogleController extends Controller
{
    public function googleAuth()
    {

        return Socialite::driver('google')->redirect();

    }
    public function googleCallback()
{
    try {
        $googleUser = Socialite::driver('google')->stateless()->user(); // إضافة stateless
        Log::debug($googleUser); // تسجيل تفاصيل المستخدم المسترجع

        $user = User::updateOrCreate([
            'google_id' => $googleUser->id,
        ], [
            'name' => $googleUser->name,
            'email' => $googleUser->email,
        ]);

        Auth::login($user);

        return redirect('/home');
    } catch (\Exception $e) {
        Log::error('Google login failed: ' . $e->getMessage());
        return redirect('/login')->withErrors(['msg' => 'Google login failed.']);
    }
}
}