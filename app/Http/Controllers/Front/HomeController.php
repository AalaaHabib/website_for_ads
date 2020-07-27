<?php

namespace App\Http\Controllers\Front;
use App\Ad;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    function index(){
        $data['ads']=Ad::orderBy('id','Desc')->get();
        $data['items']=Ad::select('duration')->get();
        return view('Front.home')->with($data);
    }
    function ads(){
        $data['ads']=Ad::get();
        return view('Front.visibleAds')->with($data);
    }
}
