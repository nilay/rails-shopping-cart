# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.delete_all
Product.create(
           [
               {name: "Banana", description: "Very good fruit", price: 0.49},
               {name: "Apple", description: "An apple a day keeps doctor away", price: 0.79},
               {name: "Mango", description: "King of fruit", price: 1.25},
               {name: "Grep", description: "Juicy fruit", price: 0.19},
               {name: "Orange", description: "Orange in colour", price: 0.69}
           ]
)