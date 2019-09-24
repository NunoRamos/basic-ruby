# frozen_string_literal: true

get '/' do
  Database.all.to_json
end

post '/create' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  # Create contact in database
  Database.store(push)

end

get '/:id' do
  contact_id = params[:id]
  #Get contact by name
end

put '/:id' do
  contact_id = params[:id]
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  #Update contact with new info
end

delete '/:id' do
  contact_id = params[:name]
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  #Hard delete contact
end