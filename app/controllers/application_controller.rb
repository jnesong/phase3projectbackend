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

end #end of ApplicationController class