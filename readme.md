Install composer packages

1-$ composer install

Create .env file

2-make a copy of .env.example and rename to .env

3-$ php artisan key:generate

4-put database pop in .env file

Do Migration

5-$ php artisan migrate


Create Pisher App

6- Create and setup pusher account

login to https://pusher.com/ and create new app
put pusher credentials to .env file
replace PUSHER_APP_KEY in your app.blade.php

var pusher = new Pusher('50499dff65d399f3d037', {
    cluster: 'eu'
});
