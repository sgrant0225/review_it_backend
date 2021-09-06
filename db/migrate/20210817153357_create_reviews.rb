class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :product_name
      t.string :image_url
      t.string :location
      t.string :feedback
      t.integer :stars
      t.integer :category_id

      t.timestamps
    end
  end
end
