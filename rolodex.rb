class Rolodex
	attr_reader :contacts

	def initialize
		@contact = []
		@id = 1000
	end

	def add_contact(contact)
		contact.id = @id 
		@contacts << contact

		@id += 1
	end
end
#