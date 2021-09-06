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
restaurant = Category.create(name: 'Restaurant & Dining')
travel = Category.create(name: 'Travel')
business = Category.create(name: 'Business')
technology = Category.create(name: 'Technology')
health = Category.create(name: 'Health')


Review.create(
    first_name: "Sharnell",
    last_name: "Grant",
    product_name: 'Mike Hammer Show', 
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMISGPidLrOFcaQfZG8rI6IQU-ng4EtplRki8fuUABbJMfPvydXoKLsWNo47aGTSsy7D0&usqp=CAU',
    location: 'Las Vegas',
    feedback: 'Mike Hammer Show was super entertaining! He was funny and his magic trick was very intriguing and he kept us engaged the entire night.',
    stars: 0, 
    category_id: entertainment.id
) 

