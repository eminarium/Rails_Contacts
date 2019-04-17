class Phone < ApplicationRecord
  belongs_to :phone_type
  belongs_to :contact

  validates_presence_of :phone_no, :phone_type, :contact
end
