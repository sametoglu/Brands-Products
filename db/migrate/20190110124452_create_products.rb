class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.string :price
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
