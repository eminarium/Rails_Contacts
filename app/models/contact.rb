class Contact < ApplicationRecord
  belongs_to :category
  has_many :phones, inverse_of: :contact, dependent: :destroy

  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :title, message: "Kontaktyň ady hökmany girizilmeli..."
  validates_presence_of :category, message: "Kategoriýa hökmany saýlanmaly..."
  validates_numericality_of :category_id, message: "Kategoriýa hökmany san belgisi bolmaly..."

end
