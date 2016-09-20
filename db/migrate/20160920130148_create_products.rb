class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.integer :category_id
      t.string :image
      t.integer :price
      t.boolean :published

      t.timestamps null: false
    end
  end
end
