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