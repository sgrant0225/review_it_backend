# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.destroy_all
Review.destroy_all

entertainment = Category.create(name: 'Entertainment') 

Review.create(
    name: 'Mike Hammer Show', 
    image_url: 'https://lh3.googleusercontent.com/proxy/QqsEInHfdciW4Ns6Tes_v64NjRt32JBjTMr_LFv-Fv1m6HX7JkY7rltboCA4e9VkCO6LTXS01GzKXIveBPXY8jen_lr9uyGTqlfF8sIHfJ5Q0EE5YorMHpEW_CyBcjtxDJTWEQg',
    location: 'Las Vegas'
    feedback: 'Mike Hammer Show was super entertaining! He was funny and his magic trick was very intriguing and he kept us engaged the entire night.',
    stars: 0 
    category_id: 
) 


# t.string :name
# t.string :image_url
# t.string :location
# t.string :feedback
# t.integer :stars
# t.integer :category_id
