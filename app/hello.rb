# frozen_string_literal: true

get '/' do
  Database.all.to_json
end

post '/create' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  # Create contact in database
end

get '/:name' do
  contact_name = params[:name]
  #Get contact by name
end

put '/:name' do
  contact_name = params[:name]
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  #Update contact with new info
end

delete '/:name' do
  contact_name = params[:name]
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  #Hard delete contact
end