$:.unshift File.dirname(__FILE__) + '/sinatra/lib'
require 'sinatra'
 
#Sinatra::Application.set.merge!(
  set :run, false
  set :environment, :production
#)

log = File.new(File.join( File.dirname(__FILE__), '..', 'log', 'sinatra.log'), "w")
STDOUT.reopen(log)
STDERR.reopen(log)
 
require 'marley'
run Sinatra.application