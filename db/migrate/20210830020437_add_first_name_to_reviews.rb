class AddFirstNameToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :first_name, :string
  end
end
