<?php

namespace App\Http\Controllers;
use App\Models\Dash_Notification;
use Illuminate\Http\Request;
use App\Events\Dash_NotificationPublished;

class DashNotificationController extends Controller
{
    use App\Events\Dash_NotificationPublished;

    $notify = Dash_Notification::create($data);

    event(new Dash_NotificationPublished($notify));
    
    
   public function store(Request $request) 
   {
     $data =$request->only(['title','body']);
     $notify = Dash_Notification::create($data);
     event(new Dash_NotificationPublished($notify));
     return response($notify, 201);
  }
   }
}
