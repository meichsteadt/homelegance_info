require 'sinatra'
require 'pony'
require 'dotenv/load'

get('/') do
  erb :index
end

get '/ashley-walkthrough' do
  erb :ashley
end

get '/thanks' do
  erb :thanks
end

post('/email') do
  Pony.mail :to => 'info@homelegance-kiosk.com',
            :subject => "Kiosk Information Requested, #{params[:first_name]} #{params[:last_name]}",
            :html_body => erb(:email),
            :via => :smtp,
            :via_options => {
              :address        => 'smtp.gmail.com',
              :port           => 587,
              :user_name      => ENV['user_name'],
              :password       => ENV['password'],
              :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
              :domain         => "homelegance-kiosk.com" # the HELO domain provided by the client to the server
            }
  redirect to '/'
end
