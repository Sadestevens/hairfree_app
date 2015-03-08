# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Account.destroy_all
Profile.destroy_all
Event.destroy_all

User.create([
  { email: "ambethoney@yahoo.com", password: "password"},
  { email: "sadeshakur@gmail.com", password: "password"},
  { email: "dennisliaw@gmail.com", password: "password"},
  { email: "dana.dflip@gmail.com", password: "password"}
])

Account.create([
  { f_name: "Angelina", l_name: "Bethoney", born_on: "April 13 1989",    phone: "774-291-0958", users_id: User.find_by(email: "ambethoney@yahoo.com").id},
  { f_name: "Sade",     l_name: "Stevens",  born_on: "November 10 1991", phone: "516-043-7720", users_id: User.find_by(email: "sadeshakur@gmail.com").id},
  { f_name: "Dennis",   l_name: "Liaw",     born_on: "May 16 1987",      phone: "678-455-9920", users_id: User.find_by(email: "dennisliaw@gmail.com").id},
  { f_name: "Dana",     l_name: "DeFilipo", born_on: "April 14 1991",    phone: "516-987-8427", users_id: User.find_by(email: "dana.dflip@gmail.com").id}
])

Profile.create([
  { image_url: "data:image/jpeg;base64,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",
    name: "Angelina", location: "Massachusetts", bio: "I'm Angie",  hair: "curly",     user_type: "blogger", users_id: User.find_by(email: "ambethoney@yahoo.com").id },
  { image_url: "https://lh5.googleusercontent.com/-9fBvI_i-qFA/AAAAAAAAAAI/AAAAAAAAF3",
    name: "Sade",     location: "New York",      bio: "I'm Sade",   hair: "faux locs", user_type: "blogger", users_id: User.find_by(email: "sadeshakur@gmail.com").id },
  { image_url: "https://a1-images.myspacecdn.com/images03/34/8e810ee9e1ca4cdb9dc3d1a63c9a04f2/300x300.jpg",
    name: "Dennis",   location: "New York",      bio: "I'm Dennis", hair: "natural",   user_type: "blogger", users_id: User.find_by(email: "dennisliaw@gmail.com").id },
  { image_url: "https://lh3.googleusercontent.com/-Fjl27OEzr0g/AAAAAAAAAAI/AAAAAAAAADE/HwDWA8zpDDs/photo.jpg",
    name: "Dana",     location: "New York",      bio: "I'm Dana",   hair: "straight",  user_type: "blogger", users_id: User.find_by(email: "dana.dflip@gmail.com").id }
])

Event.create([
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",
    title: "Angelina", category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "ambethoney@yahoo.com").id},
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",
    title: "Sade",     category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "sadeshakur@gmail.com").id},
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",
    title: "Dennis",   category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "dennisliaw@gmail.com").id},
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",
    title: "Dana",     category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "dana.dflip@gmail.com").id}
])


