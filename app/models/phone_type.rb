class PhoneType < ApplicationRecord
	validates_presence_of :title, message: "Telefon Belgi görnüşiniň ady hökmany girizilmeli..."
	validates_presence_of :icon_type, message: "Ikonka görnüşi hökmany girizilmeli..."
end
