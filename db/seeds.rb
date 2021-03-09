# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
matt = User.create(username: 'matt96')
aaron = User.create(username: 'aaronm')
eric = User.create(username:'coolguy420')

coffees = [{
    name: "Cappucino",
    image: "https://coffeeatthree.com/wp-content/uploads/cappuccino-1a.jpg"
   },
   {
   name: "Americano",
   image: "https://www.homegrounds.co/wp-content/uploads/2019/08/americano-e1522545816957.jpg"
   },
   {
   name: "Espresso",
   image: "https://www.seriouseats.com/2018/06/20180613-coffee-vs-espresso-vicky-wasik-3-1500x1125.jpg"
   },
   {
   name:"Mocha",
   image: "https://globalassets.starbucks.com/assets/f4ec500b34624242b15c2d29e53f3c48.jpg?impolicy=1by1_wide_1242"
   },
   {
   name:"Latte",
   image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/latte-art-in-a-yellow-cup-on-a-marble-table-royalty-free-image-1592427210.jpg"
   }
]
coffees.each do |coffee_hash|
   Coffee.create(coffee_hash)
end
 
orders = [{
   date: "2020-12-20 08:00",
   note: "Extra milk pleasse",
   coffee_id: 1,
   user_id:2
},
{
   date: "2020-07-23 08:00",
   note:"Soy milk",
   coffee_id:3,
   user_id:3,
},
{
   date:"2020-09-08 08:00",
   note:"If you give me dairy I will die",
   coffee_id: 4,
   user_id:1
}]

orders.each do |order_hash|
   Order.create(order_hash)
end
puts "SEEDED!"