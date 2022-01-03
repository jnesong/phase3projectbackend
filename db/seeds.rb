puts "👋 Deleting old data..."

User.delete_all
Baby.delete_all
Joinship.delete_all
Sleep.delete_all

puts "🌱 Seeding data..."

user1 = User.create(username: "Jessica11", displayname: "Jessica")
user2 = User.create(username: "Mark1", displayname: "Mark")
user3 = User.create(username: "Eric9", displayname: "Eric")
user4 = User.create(username: "Sharon11", displayname: "Sharon")
user5 = User.create(username: "Vincent6", displayname: "Vincent")

baby1 = Baby.create(name: "Chloe")
baby2 = Baby.create(name: "Eleanor")
baby3 = Baby.create(name: "Remus")

joinship1 = Joinship.create(shipname: "ChauJones", user_id: user1.id, baby_id: baby1.id)
joinship2 = Joinship.create(shipname: "Jones", user_id: user2.id, baby_id: baby1.id)
joinship3 = Joinship.create(shipname: "Chau", user_id: user3.id, baby_id: baby2.id)
joinship4 = Joinship.create(shipname: "KimChau", user_id: user4.id, baby_id: baby2.id)
joinship4 = Joinship.create(shipname: "Song", user_id: user5.id, baby_id: baby3.id)
joinship5 = Joinship.create(shipname: "SongJones", user_id: user5.id, baby_id: baby1.id)
joinship6 = Joinship.create(shipname: "SongKim", user_id: user5.id, baby_id: baby2.id)

sleep1 = Sleep.create(woke: Time.strptime("12/25/2021 07:40", "%m/%d/%Y %H:%M"), hours: 2, minutes: 20, baby_id: baby1.id)
sleep2 = Sleep.create(woke: Time.strptime("12/25/2021 16:40", "%m/%d/%Y %H:%M"), hours: 2, minutes: 00, baby_id: baby1.id)
sleep3 = Sleep.create(woke: Time.strptime("12/25/2021 08:00", "%m/%d/%Y %H:%M"), hours: 4, minutes: 30, baby_id: baby2.id)
sleep4 = Sleep.create(woke: Time.strptime("12/25/2021 17:00", "%m/%d/%Y %H:%M"), hours: 2, minutes: 40, baby_id: baby2.id)
sleep5 = Sleep.create(woke: Time.strptime("12/25/2021 05:00", "%m/%d/%Y %H:%M"), hours: 4, minutes: 00, baby_id: baby3.id)
sleep6 = Sleep.create(woke: Time.strptime("12/25/2021 17:00", "%m/%d/%Y %H:%M"), hours: 1, minutes: 20, baby_id: baby3.id)



puts "🌿 Done seeding!"
