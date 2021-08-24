class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :image_url, :location, :feedback, :stars, :category, :category_id
end
