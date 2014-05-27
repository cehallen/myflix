# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Video.create(title: "Monk", description: "Monk is an American comedy-drama detective mystery television series created by Andy Breckman and starring Tony Shalhoub as the eponymous character, Adrian Monk.", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg")
Video.create(title: "South Park", description: "South Park is an American adult animated sitcom created by Trey Parker and Matt Stone for the Comedy Central television network.", small_cover_url: "/tmp/south_park.jpg")
Video.create(title: "Futurama", description: "Futurama is an American adult animated science fiction sitcom created by Matt Groening and developed by Groening and David X. Cohen for the Fox Broadcasting Company.
", small_cover_url: "/tmp/futurama.jpg")

