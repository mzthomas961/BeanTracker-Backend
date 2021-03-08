# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 matt = User.create(username: 'matt96')
 coffees = [{
     name: "Cappucino"
 },{
 name:"Americano"
 },{
name:"Espresso"
 },{
name:"Mocha"
 },{
name:"Latte"
 }
 ]
 coffees.each do |coffee_hash|
    Coffee.create(coffee_hash)
 end

 puts "SEEDED!"