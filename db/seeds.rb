# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


products = Product.create([{ name: 'cone', price: 2.25 }, { name: 'shake', price: 4.99, discount: 0.2 }, { name: 'float', price: 3.50, discount: 0.2 }])

ice_cream_flavors = Ingredient.create([{ category: 'ice cream', description: 'vanilla' }, { category: 'ice cream', description: 'chocolate' }, { category: 'ice cream', description: 'strawberry' }, { category: 'ice cream', description: 'chocolate chip' }, { category: 'ice cream', description: 'peach' }])

sodas = Ingredient.create([{ category: 'soda', description: 'cherry' }, { category: 'soda', description: 'coca cola' }, { category: 'soda', description: 'root beer' }])

milk_choices = Ingredient.create([{category: 'milk', description: 'skim'}, {category: 'milk', description: 'whole'}, {category: 'milk', description: '2%'}])