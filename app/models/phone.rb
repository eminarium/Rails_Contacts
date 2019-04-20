class Phone < ApplicationRecord
  belongs_to :phone_type
  belongs_to :contact

  validates_presence_of :phone_no, message: "Telefon belgisi hökmany girizilmeli ..." 
  validates_presence_of :phone_type, message: "Telefon belgisiniň görnüşi hökmany saýlanylmaly..."
  validates_presence_of :contact, message: "Kontakt hökman belli edilmeli..."
end
