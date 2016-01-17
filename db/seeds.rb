# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s = User.create(name: "Sheldon", password: "password", password_confirmation: "password")
l = User.create(name: "Leonard", password: "password", password_confirmation: "password")
h = User.create(name: "Howard", password: "password", password_confirmation: "password")
r = User.create(name: "Raj", password: "password", password_confirmation: "password")


r.posts.create(body: "We just got back from that exhibit of those plasticized cadavers.")
h.posts.create(body: "Some of those skinless chicks were hot.")
s.posts.create(body: "If you'll excuse me, I’m going to pack.")
h.posts.create(body: "That's kind of an overreaction to a little harmless necrophilia.")
l.posts.create(body: "It's not you, Howard. He says he's moving out.")
r.posts.create(body: "What did you do? Did you change the contrast or brightness settings on the television?")
l.posts.create(body: "No.")
r.posts.create(body: "Did you take a Band-Aid off in front of him?")
l.posts.create(body: "No.")
h.posts.create(body: "Did you buy generic ketchup? Forget to rinse the sink? Talk to him through the bathroom door?")
r.posts.create(body: "Adjust the thermostat? Cook with cilantro? Pronounce the 'T' in \"often\"?")
l.posts.create(body: "No.")
h.posts.create(body: "Did you make fun of trains?")
l.posts.create(body: "I didn’t do anything, he's just gone insane.")
h.posts.create(body: "Well, we all knew this day was coming.")