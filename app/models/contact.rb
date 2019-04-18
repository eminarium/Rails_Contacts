class Contact < ApplicationRecord
  belongs_to :category
  #has_many :phones, dependent: :destroy
  has_many :phones, inverse_of: :contact

  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :title, message: "Kontaktyň ady hökmany girizilmeli..."
  validates_presence_of :category, message: "Kategoriýa hökmany saýlanmaly..."
  #validates :category_id, numericality: { only_integer: true}
  validates_numericality_of :category_id, message: "Kategoriýa hökmany san belgisi bolmaly..."
  #validates :category, presence: true

end
