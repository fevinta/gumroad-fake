class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :author
      t.integer :price
      t.integer :bump_price
      t.string :image

      t.timestamps
    end
  end
end
