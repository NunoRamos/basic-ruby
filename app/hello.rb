# frozen_string_literal: true

get '/' do
  Database.all.to_json
end

get '/delete-contacts' do
  Database.get_deleted_contacts.to_json
end

post '/create' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
  # Create contact in database
  Database.store(push)

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