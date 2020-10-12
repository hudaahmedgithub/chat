@extends('layouts.app')

@section('content')
<link rel="stylesheet" href="{{ mix('css/app.css') }}" />
<script defer src="{{ mix('js/app.js') }}"></script>
<div class="container-fluid">
    <div class="row">
         <div class="col-md-4">
             <div class="user-wrapper">
                 <ul class="users">
                    @foreach($users as $user)
                    <li class="user" id="{{$user->id}}">
                        @if($user->unread)
                     <span class="pending">
                        {{$user->unread}}
                     </span>
                        @endif
                       <div class="media">
                           <div class="media-left">
                               
                               <img src="{{$user->image}}" class="media-object">
                           </div>
                           <div class="media-body">
                             <p class="name">{{$user->name}}</p>
                             <p class="email">{{$user->email}}</p>
                           </div>
                       </div>
                    </li>
                     <br>
                     <br>
                     @endforeach
                </ul>
             </div>
         </div>
        <div class="col-md-8" id="messages" style="border:20px solid #ccc">
          
    </div>
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://js.pusher.com/7.0/pusher.min.js"></script>

  <script>

    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('50499dff65d399f3d037', {
      cluster: 'eu'
    });

    var channel = pusher.subscribe('my-channel');
    channel.bind('form-submitted', function(data) {
       alert(data.text);
    });
  </script>
@endsection
