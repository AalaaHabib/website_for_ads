<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Ad;
use Image; 
use Illuminate\Support\Facades\Storage;

class dashboardController extends Controller
{
    //
    function create(){
        return view('Admin.createAd');
    }
    function store(Request $request){
        //validate input Data
        $data=$request->validate([
            'title'=>'required|string|max:50',
            'category'=>'required|string|max:20',
            'duration'=>'required',
            'desc'=>'required',
            'image'=>'required|mimes:jpg,jpeg,png'
        ]);
        $newName=$data['image']->hashName();
        Image::make($data['image'])->save(public_path('uploads/'.$newName));
        $data['image']=$newName;
        
        Ad::create($data);
        return redirect(route('index'));
    }
    
    function edit($id){
        $data['ad']=Ad::findOrFail($id);
        return view('Admin/updateAd')->with($data);
    }

    function update(Request $request){
        //validate input Data
        $data=$request->validate([
            'title'=>'required|string|max:50',
            'category'=>'required|string|max:20',
            'duration'=>'required',
            'desc'=>'required',
        ]);

        $oldName=Ad::findOrFail($request->id)->image;
        if(!$request->hasFile('iamge')){
            $data['image']=$oldName;
            
        }
        else{
            Storage::disk('uploads')->delete('ads/'.$oldName);
            $newName=$data['image']->hashName();
            Image::make($data['image'])->save(public_path('uploads/ads'.$newName));
            $data['image']=$newName;
        }
        Ad::findOrFail($request->id)->update($data);
        return redirect(route('index'));
    }

    function delete($id){
        $oldName=Ad::findOrFail($id)->image;
        Storage::disk('uploads')->delete('ads/'.$oldName);
        Ad::findOrFail($id)->delete();
        return redirect(route('index'));
    }
}
