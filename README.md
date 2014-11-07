#Readme

A demonstration application using Rails 4, MySQL and nested forms. To run this application locally clone this repository and run the following commands.
  
  bundle install
  rake db:migrate
  rake db:seed
  rails s

##Problem Statement

Imagine that you run an ice cream shop. You sell three different main items – ice cream cones, milkshakes, and floats. You have a large number of different flavors of ice cream available.


Ice cream cones can be made of either one or two scoops, and each scoop can be any available flavor. The cone can be only one of the available waffle cones. Milkshakes can only be made with one flavor of ice cream, and must be made with either skim, whole, or 2% milk. Floats can be made with any number of scoops of any number of different flavors, plus one available soda.

Finally, your store offers discounts, but only on milkshakes and floats and not on ice cream cones. Utilizing Object Oriented Programming, design and build a system that will store the listed information. Your submitted solution should contain not only the source code for the classes you have created, but also contain example usage of these classes.

You must:
- create at least one of each of your product types (ice cream cone, milkshake, float)
- purchase at least one item with a discount
- use at least 5 different flavors of ice cream
- use at least two different serving vessels(waffle cone, cup, etc).
- use at least 3 different flavors of soda
