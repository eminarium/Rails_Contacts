class Category < ApplicationRecord

	has_many :contacts
	
	validates_presence_of :title, message: "Kategoriýa ady hökmany girizilmeli ..."

end
