 <?php

namespace App\Http\Resources\Notification;

use Illuminate\Http\Resources\Json\Resource;

class NotificationCollection extends Resource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request
     * @return array
     */
    public function toArray($request)
    {
        return [
         'text' => $this->text,
         'created_at'=>$this->created_at
            ]
       
    }
}
