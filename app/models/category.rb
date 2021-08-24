class Category < ApplicationRecord
    #add relationships
    has_many :reviews
end
