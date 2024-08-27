class CreateShops < ActiveRecord::Migration[7.2]
  def change
    create_table :shops do |t|
      t.string :title, null: false
      t.string :address
      t.text :description
      t.string :area
      t.string :budget
      t.string :scene
      t.string :opening_hours
      t.string :shop_number
      t.string :shop_url
      t.string :shop_image

      t.timestamps
      t.index ["title"], name: "index_shops_on_title", unique: true
    end
  end
end
