require 'sinatra'
require 'mail'

get('/') do
  erb :index
end

post('/email') do
  mail = Mail.new
  mail[:from] = 'info@homelegance-kiosk.com'
  mail[:to] = 'matteichsteadt@gmail.com'
  mail[:subject] = 'Kiosk Information Requested'
  mail[:body] = "Email: #{params[:email]} \n\nName: #{params[:first_name]} #{params[:last_name]}\n\nStore: #{params[:store_name]} \n\n Sales Rep: #{params[:sales_rep]} \n\nMessage: #{params[:message]}"
  mail.deliver!
  redirect to '/'
end
