require_relative 'contact.rb'
require_relative 'rolodex.rb'
require 'sinatra'

$rolodex = Rolodex.new

# as the last route, add

get '/contacts/new' do
	erb :new_contact
end

get '/' do

	@crm_app_name = "My CRM"
	erb :index
end

get "/contacts" do
  erb :contacts
end

post '/contacts' do
	 new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
  $rolodex.add_contact(new_contact)
  redirect to('/contacts') # we do a redirect to keep the user's browser state consistent with what they are seeing
end

#