class AddLastNameToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :last_name, :string
  end
end
