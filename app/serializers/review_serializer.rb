class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :first_name, :last_name, :product_name, :image_url, :location, :feedback, :stars, :category, :category_id

  belongs_to :category
end
