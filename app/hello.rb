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
  #Update contact with new info
  contact_id = params[:id]
  data = JSON.parse(request.body.read)
  Database.update(contact_id,data)
end

delete '/:id' do
  contact_id = params[:id]
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  #Hard delete contact
end