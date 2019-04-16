class Contact < ApplicationRecord
  belongs_to :category
  validates_presence_of :title, :category_id
  #validates :category_id, numericality: { only_integer: true}
  validates_numericality_of :category_id
  validates :category, presence: true

end
