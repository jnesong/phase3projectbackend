require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

get "/:username" do
  this_user = User.find_by(username: params[:username])
  this_user.to_json
end

get "/:username/babies" do
  users_babies = User.find_by(username: params[:username]).babies
  users_babies.to_json
end

get "/:name/lastslept" do
  baby_last_sleep = Baby.find_by(name: params[:name]).sleeps.last
  baby_last_sleep.to_json
end

get"/:name/sleephistory" do
  baby_sleep_history = Baby.find_by(name:params[:name]).sleeps
  baby_sleep_history.to_json
end

delete "/:name/sleephistory/:id" do
sleep = Sleep.find(params[:id])
sleep.destroy
sleep.to_json
end

post "/sleeps" do 
  new_sleep = Sleep.create(woke: params[:woke], hours: params[:hour], minutes: params[:min], baby_id: params[:baby_id])
  new_sleep.to_json
end

end #end of ApplicationController class