<?php
namespace App\Console\Commands;
use Illuminate\Console\Command;
use App\Jobs\SendEmail;
class SendMail extends Command
{
    protected $signature = 'SendMail:fire';
    protected $description = 'Command of firing emails. But emails prove they want their employment.';
    public function __construct() {
        parent::__construct();
    }
    public function handle()
    {
        $args = [
            'target'  => 'jacob@mathisonprojects.com',
            'subject' => 'I can see you...',
            'message' => 'You can read this?'
        ];
        SendEmail::dispatch($args);
    }
}