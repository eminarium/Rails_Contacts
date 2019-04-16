class PhoneType < ApplicationRecord
	validates_presence_of :title, :icon_type
end
