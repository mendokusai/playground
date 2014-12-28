# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User
# id
# email
# reset pass token
# rest pass sent
# rememeber created at
# sign in count
# current sign in
# last sign in
# curent sing up ip
# last sign in ip
# created at
# updated at
# username
# admin

User.destroy_all

ryan_admin = User.create({
	email: "admin@ryanpauley.com",
	password: "password",
	username: "ADMIN",
	admin: true
	})

ryan_user = User.create({
	email: "info@ryanpauley.com",
	password: "password",
	username: "ryan",
	admin: false
	})



# Park
# id
# name
# address
# city
# state
# descript
# created
# updated
# lat
# long

Park.destroy_all

park1 = Park.create({
	name: "Cook Oval",
	address: "Biffin Street",
	city: "Cook",
	state: "ACT",
	description: "A well kept Oval"
	})

park2 = Park.create({
	name: "Aranda Playing Fields",
	address: "Baambila Street",
	city: "Aranda",
	state: "ACT",
	description: "Nice fields, boring playground."
	})

# #equipment
##(id)
## name (string)
## description (text)
## age_range (string)

Equipment.destroy_all

swing = Equipment.create({
	name: "Child Swing",
	description: "A chain-rope swing with a hard rubber seat board.",
	age_range: "4-12"
	})

baby_swing = Equipment.create({
	name: "Infant Swing",
	description: "A chain-rope swing with a rubber bucket seat.",
	age_range: "6mo - 4yrs"
	})