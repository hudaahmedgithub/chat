   <div class="message-wrapper" >
            <ul class="messages">
                @foreach($messages as $message)
                
                <li class="message clearfix">
                   <div class="{{($message->from==Auth::id()) ? 'sent' : 'received'}}">
                        <?php $message->is_read=1;
                       $message->save();
                       ?>
                    <p> {{$message->message}} </p>
                     <p class="date">{{date('d M y h:i a' ,strtotime($message->created_at))}}</p>
                    </div>
                 </li>
                <div class="clearfix">
                </div>
                  @endforeach
             </ul>
        </div>
        <div class="input-text">
            <input type="text" name="message" class="submit">
          </div>
