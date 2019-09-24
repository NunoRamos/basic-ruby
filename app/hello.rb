# frozen_string_literal: true

get '/' do
  Database.all.to_json
end

post '/create' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  # Create contact in database
end

get '/:id' do
  contact_id = params[:id]

  Database.find(contact_id).to_json
end

put '/:id' do
  contact_id = params[:id]
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  #Update contact with new info
end

delete '/hard/:name' do
  contact_name = params[:name]
  Database.delete(contact_name, true)

  204
end

delete '/soft/:name' do
  contact_name = params[:name]
  Database.delete(contact_name, false)

  204
end