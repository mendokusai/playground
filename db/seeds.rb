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
	username: "ryanosaur",
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
	description: "A well kept Oval used primarily for Cricket with a very simple playground."
	})

park2 = Park.create({
	name: "Aranda Playing Fields",
	address: "Banambila Street",
	city: "Aranda",
	state: "ACT",
	description: "Nice fields, boring playground."
	})

park3 = Park.create({
	name: "Lyons Neighborhood Oval",
	address: "Launcston Street",
	city: "Lyons",
	state: "ACT",
	description: "A big outdoor space."
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

see_saw = Equipment.create({
	name: "See-saw",
	description: "A standard see-saw for two children.",
	age_range: "1yr and up"
	})

spinner = Equipment.create({
	name: "Spinner",
	description: "A metal spinning ride.",
	age_range: "2yrs and up"
	})

spring_rider = Equipment.create({
	name: "Spring Rider",
	description: "A playful character-chair on a spring for rocking.",
	age_range: "1yr and up"
	})

play_structure = Equipment.create({
	name: "Metal Play Structure",
	description: "A metal structure for play.",
	age_range: "1yr and up"
	})

  # create_table "park_equipments", force: true do |t|
  #   t.integer  "park_id"
  #   t.integer  "equipment_id"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end

ParkEquipment.destroy_all

cook_swing = ParkEquipment.create({
	park_id: park1.id,
	equipment_id: swing.id
	})

cook_b_swing = ParkEquipment.create({
	park_id: park1.id,
	equipment_id: baby_swing.id
	})

cook_spinner = ParkEquipment.create({
	park_id: park1.id,
	equipment_id: spinner.id
	})

cook_spring_rider = ParkEquipment.create({
	park_id: park1.id,
	equipment_id: spring_rider.id
	})