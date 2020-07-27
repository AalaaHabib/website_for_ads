<!--extend layout-->
@extends('Front.frontLayout')

<!--special content fronm page to
another--> 
@section('Content')

<div class="container py-5 mt-5">
    @include('Admin.inc.errors')
    <form class="mt-5"  method="post" action="{{route('updateAd')}}" enctype="multipart/form-data">
    <input type="hidden" name="id" value="{{$ad->id}}">  
    @csrf
    <div class="form-group mt-5">
        <label for="exampleInputEmail1">Title</label>
        <input type="text" name="title" value ="{{$ad->title}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">category</label>
        <input type="text" name="category" value ="{{$ad->category}}"  class="form-control" id="exampleInputPassword1">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Description</label>
        <textarea rows="5" name="desc" class="form-control" id="exampleInputPassword1">{{$ad->desc}}</textarea> 
    </div>
    <img src="{{asset('uploads/'.$ad->image)}}" width=100>
  <div class="row">
      <div class="col-6">
        <div class="form-group ">
            <label for="exampleFormControlFile1">Choose image</label>
            <input type="file" name="image" class="form-control-file" id="exampleFormControlFile1">
        </div>
      </div>
      <div class="col-6">
        <div class="form-group">
            <label for="exampleFormControlFile1">Duration</label>
            <div class="form-group">
                <label for="exampleSelect1">Example select</label>
                <input type="text" name="duration" value ="{{$ad->duration}}" class="form-control" id="exampleInputPassword1">
            </div>
        </div>
      </div>
  </div>
   
    <input  type="submit" class="btn btn-primary mb-5">
    </form>
</div>


@endsection