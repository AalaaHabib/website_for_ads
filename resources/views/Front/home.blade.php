<!--extend layout-->
  @extends('Front.frontLayout')

  <!--special content fronm page to another--> 
  @section('Content')
  <!--Header-->
    <div class="site-blocks-cover inner-page-cover overlay" 
    style="background-image:url('{{ URL::asset('Front')}}/images/hero_2.jpg')" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400"> 
            <div class="row justify-content-center mt-5">
              <div class="col-md-8 text-center">
                <h1>Ads Listings</h1>
                <p class="mb-0">Choose product you want</p>
              </div>
            </div> 
          </div>
        </div>
      </div>
    </div>  
    <!--add Content-->
    <div class="site-section">
      <div class="container text-center">
      <p calss="text-center my-4" >you can see <a href="{{route('ads')}}">Ads</a>to Edit/ Delete them </p>
        <div class="row">
            @foreach($ads as $ad)
            <div class="col-lg-4 item" id="{{$ad->duration}}" style="visibility:visible">                
              <div class="d-block d-md-flex listing vertical">
                <a href="#" class="img d-block" style="background-image:url('{{ URL::asset('uploads/'.$ad->image)}}')"></a>
                <div class="lh-content">
                  <span class="category">{{$ad->category}}</span>
                  <a href="#" class="bookmark"><i class="fas fa-pen"></i></a>
                  <h3><a href="#">{{$ad->title}}</a></h3>
                  <address>{{\Illuminate\Support\Str::limit($ad->desc,90,'...')}}</address>
                </div>
            </div>
           </div>
            <script>
              //hide Element according to it's duration
            function hideAd(id){
              var itemToHide = document.getElementById(id)
              itemToHide.style.visibility="hidden"             
            }
            var list = document.getElementsByClassName("item");
            for (let index = 0; index < list.length; index++) {
                const waitingTime = document.getElementsByClassName('item')[index].id
                setTimeout(function(){
                    hideAd(waitingTime)
                    }, waitingTime);

            }
         </script>
              @endforeach

          </div>
      </div>
    </div>
      

@endsection
   


  