<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Message;
use Auth;
use Illuminate\Support\Facades\DB;
use Pusher\Pusher;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $users=User::where('id','!=',Auth::id())->get();
        $users = DB::select("select users.id, users.name, users.image, users.email, count(is_read) as unread 
        from users LEFT  JOIN  messages ON users.id = messages.from and is_read = 0 and messages.to = " . Auth::id() . "
        where users.id != " . Auth::id() . " 
        group by users.id, users.name, users.image, users.email");
        return view('home', ['users' => $users]);
        
    }
    
    public function getMessage($user_id)
    {
        $my_id=Auth::id();
        $messages=Message::where(function($jquery) use ($user_id , $my_id){
            $jquery->where('from',$my_id)->where('to',$user_id);
            
        })->orWhere(function($jquery) use ($user_id , $my_id)    {
            $jquery->where('from',$user_id)->where('to',$my_id);
     
        })->get();
        return view('messages.index',['messages'=>$messages]);
    }
    
  public function sendMessage(Request $request)  
  {
      $from=Auth::id();
      $to=$request->receiver_id;
      $message=$request->message;
      $data=new Message();
      $data->to=$to;
      $data->from=$from;
      $data->message=$message;
      $data->is_read=0;
      $data->save();
        // pusher
        $options = array(
            'cluster' => 'eu'
        );

        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );

        $data = ['from' => $from, 'to' => $to]; // sending from and to user id when pressed enter
        $pusher->trigger('my-channel', 'my-event', $data);
  }
}





