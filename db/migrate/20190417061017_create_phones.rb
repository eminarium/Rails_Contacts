class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :phone_no
      t.text :notes
      t.references :phone_type, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
