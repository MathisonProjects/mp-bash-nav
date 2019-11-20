#!/bin/bash

mkdir -p ./resources/views
mkdir -p ./app/Jobs

cp ~/.mp/Template/laravel/mail/SendEmail.job.php ./app/Jobs/SendEmail.job.php
cp ~/.mp/Template/laravel/mail/SendEmail.command.php ./app/Console/SendEmail.command.php
cp ~/.mp/Template/laravel/mail/email/* ./resources/views/email/