#!/bin/bash

# Support for Laravel 5.8 is dropped, this is the alternative.
composer require laravel/passport:7.5.1
php artisan make:auth
php artisan migrate
php artisan passport:install

mkdir -p ./app/Http/Controllers/Api

cp ~/.mp/Template/laravel/passport/User.php ./app/User.php
cp ~/.mp/Template/laravel/passport/AuthServiceProvider.php ./app/Providers/AuthServiceProvider.php
cp ~/.mp/Template/laravel/passport/AuthController.php ./app/Http/Controllers/Api/AuthController.php
cp ~/.mp/Template/laravel/passport/ForceJsonResponse.php ./app/Http/Middleware/ForceJsonResponse.php
cp ~/.mp/Template/laravel/passport/Kernel.php ./app/Http/Kernel.php
cp ~/.mp/Template/laravel/passport/api.php ./routes/api.php