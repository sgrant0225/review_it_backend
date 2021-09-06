class Review < ApplicationRecord
    #add relationships 
    belongs_to :category #optional: true
    validates :product_name, :image_url, :feedback, :stars, presence: true
end
