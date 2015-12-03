# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(fname: "bob", lname: "smith",  email: "bob@gmail.com", password: "12345")
User.create(fname: "max", lname: "dejong",  email: "max@live.nl", password: "2345")
User.create(fname: "alex", lname: "daza",  email: "alex@gmail.com", password: "1234")