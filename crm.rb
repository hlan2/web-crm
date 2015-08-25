require_relative 'contact.rb'
require_relative 'rolodex.rb'
require 'sinatra'

get '/'  do
	@crm_app_name = "My CRM"
	erb :index
end

get "/contacts" do
  @contacts = []
  @contacts << Contact.new("1", "Yehuda", "Katz", "yehuda@example.com", "Developer")
  @contacts << Contact.new("2", "Mark", "Zuckerberg", "mark@facebook.com", "CEO")
  @contacts << Contact.new("3", "Sergey", "Brin", "sergey@google.com", "Co-Founder")

  erb :contacts
end