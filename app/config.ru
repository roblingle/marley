root_dir = File.dirname(__FILE__)

$:.unshift root_dir + '/sinatra/lib'
require 'sinatra'
 
set :app_file, File.join(root_dir, 'app', 'marley.rb')
set :run, false
set :environment, :production

log = File.new(File.join( File.dirname(__FILE__), '..', 'log', 'sinatra.log'), "w")
STDOUT.reopen(log)
STDERR.reopen(log)
 
require 'marley'
run Sinatra::Application