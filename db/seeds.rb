# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


qualification1 = Qualification.create(name: "Iata Level 1")
qualification2 = Qualification.create(name: "Iata Level 2")
qualification3 = Qualification.create(name: "Iata level 3")

contractor1 = Contractor.create(name: "Toby Merlet", email: "toby@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 50000, phone: "0131-346-0089", role: "User", last_active: 1421755932, available_now: true)
addresscont1 = Address.create(line1: "an edinburgh contractor address", city: "Edinburgh", postcode: "eh12 6er", country: "uk" )
contractor1.address = addresscont1
contractor1.qualifications << qualification1


contractor2 = Contractor.create(name: "Gareth Joseph", email: "gareth@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 500, phone: "0108-643-0900", role: "User", last_active: 1422104705, available_now: true)
addresscont2 = Address.create(line1: "a london contractor address", city: "London", postcode: "n1 5tq", country: "uk" )
contractor2.address = addresscont2
contractor2.qualifications << qualification2

contractor3 = Contractor.create(name: "Johana Petrie", email: "johana@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 200, phone: "0131-346-0089", role: "User", last_active: 1422104788, available_now: true)
addresscont3 = Address.create(line1: "a bristol contractor address", city: "Bristol", postcode: "bs11", country: "uk" )
contractor3.address = addresscont3
contractor3.qualifications << qualification3

contractor4 = Contractor.create(name: "David Blain", email: "david@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 500, phone: "0108-643-0900", role: "User", last_active: 1422194721, available_now: true)
addresscont4 = Address.create(line1: "an swansea contractor address", city: "Swansea", postcode: "SW9", country: "Wales" )
contractor4.address = addresscont4
contractor4.qualifications << qualification1

contractor5 = Contractor.create(name: "Graham Curl", email: "graham@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 50000, phone: "0131-346-0089", role: "User", last_active: 1422184712, available_now: true)
addresscont5 = Address.create(line1: "an brighton contractor address", city: "Brighton", postcode: "BN2", country: "uk" )
contractor5.address = addresscont5
contractor5.qualifications << qualification2

contractor6 = Contractor.create(name: "Andrew Henning", email: "andrew@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 500, phone: "0108-643-0900", role: "User", last_active: 1422174765, available_now: true)
addresscont6 = Address.create(line1: "an aberdeen contractor address", city: "Aberdeen", postcode: "ab52", country: "uk" )
contractor6.address = addresscont6
contractor6.qualifications << qualification3

contractor7 = Contractor.create(name: "Gwenn Frame", email: "gwenn@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 5000, phone: "0131-346-0089", role: "User", last_active: 1422164712, available_now: true)
addresscont7 = Address.create(line1: "an liverpool contractor address", city: "Liverpool", postcode: "L2", country: "uk" )
contractor7.address = addresscont7
contractor7.qualifications << qualification1

contractor8 = Contractor.create(name: "James Macdonald", email: "james@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 200, phone: "0108-643-0900", role: "User", last_active: 1422154721, available_now: true)
addresscont8 = Address.create(line1: "An manchester contractor address", city: "Manchester", postcode: "M33", country: "uk" )
contractor8.address = addresscont8
contractor8.qualifications << qualification2

contractor9 = Contractor.create(name: "Liam Grant", email: "liam@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 500, phone: "0131-346-0089", role: "User", last_active: 1422144723, available_now: true)
addresscont9 = Address.create(line1: "an norfolk contractor address", city: "Norfolk", postcode: "NR14", country: "uk" )
contractor9.address = addresscont9
contractor9.qualifications << qualification3

contractor10 = Contractor.create(name: "Sam Hayes", email: "sam@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 50000, phone: "0108-643-0900", role: "User", last_active: 1422134712, available_now: true)
addresscont10 = Address.create(line1: "an cardif contractor address", city: "Cardif", postcode: "CF35", country: "uk" )
contractor10.address = addresscont10
contractor10.qualifications << qualification1

contractor11 = Contractor.create(name: "Tobias Green", email: "tobias@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 500, phone: "0131-346-0089", role: "User", last_active: 1422124703, available_now: true)
addresscont11 = Address.create(line1: "a London Address", city: "London", postcode: "N1 5TQ", country: "uk" )
contractor11.address = addresscont11
contractor11.qualifications << qualification2

contractor12 = Contractor.create(name: "Eduardo Cordova", email: "eduardo@gmail.com", password: "password", password_confirmation: "password", available_now: true, distance_travel: 200, phone: "0108-643-0900", role: "User", last_active: 1422114705, available_now: true)
addresscont12 = Address.create(line1: "an aberdeen contractor address", city: "Aberdeen", postcode: "ab52", country: "uk")
contractor12.address = addresscont12
contractor12.qualifications << qualification3

employee1 = Employee.create(name: "Mike Martin", email: "mike@gmail.com", password: "password", password_confirmation: "password", role: "User", last_active: 1422101705)
employee2 = Employee.create(name: "Mathilda", email: "mathilda@gmail.com", password: "password", password_confirmation: "password", role: "User", last_active: 1422104305)

company1 = Company.create(name: "Rope Access Recruitment")
addresscom1 = Address.create(line1: "an edinburgh company address", city: "edinburgh", postcode: "eh12 6er", country: "uk")
company1.address = addresscom1
company1.employees << employee1

company2 = Company.create(name: "Oil and Gas recruitment")
addresscom2 = Address.create(line1: "a london company address", city: "London", postcode: "n1 5tq", country: "uk" )
company2.address = addresscom2
company2.employees << employee2

job1 = Job.create(description: "Experienced Window cleaner", abroad: false, filled: false, cancelled: false, start_date: "19/12/2014", end_date: "21/01/2015", salary_range: "£250 p/d")
addressjob1 = Address.create(line1: "an edinburgh job address", city: "edinburgh", postcode: "eh12 6er", country: "uk" )
job1.address = addressjob1
company1.jobs << job1
job1.qualifications << qualification3


job2 = Job.create(description: "EC Technician", abroad: false, filled: false, cancelled: false, start_date: "19/12/2014", end_date: "21/01/2016", salary_range: "£200 p/d")
addressjob2 = Address.create(line1: "a london job address", city: "London", postcode: "n1 5tq", country: "uk" )
job2.address = addressjob2
company1.jobs << job2
job2.qualifications << qualification2

job3 = Job.create(description: "Abseiling RA operative", abroad: false, filled: false, cancelled: false, start_date: "19/12/2014", end_date: "21/01/2015", salary_range: "£150 p/d")
addressjob3 = Address.create(line1: "a bristol job address", city: "Bristol", postcode: "bs11", country: "uk" )
job3.address = addressjob3
company1.jobs << job3
job3.qualifications << qualification1

job4 = Job.create(description: "Rope access Insulator", abroad: false, filled: false, cancelled: false, start_date: "19/12/2014", end_date: "21/01/2016", salary_range: "£150 p/d")
addressjob4 = Address.create(line1: "an Irish job address", city: "Belfast", postcode: "BT13", country: "Ireland" )
job4.address = addressjob4
company1.jobs << job4
job4.qualifications << qualification3

job5 = Job.create(description: "Rope Access Painter ", abroad: false, filled: false, cancelled: false, start_date: "19/12/2014", end_date: "21/01/2015", salary_range: "£150 p/d")
addressjob5 = Address.create(line1: "A london address", city: "Aberdeen", postcode: "ec1 5er", country: "uk" )
job5.address = addressjob5
company1.jobs << job5
job5.qualifications << qualification2

job6 = Job.create(description: "Abseiling Electrician", abroad: false, filled: false, cancelled: false, start_date: "19/12/2014", end_date: "21/01/2016", salary_range: "£190 p/d")
addressjob6 = Address.create(line1: "an aberdeen job address", city: "Aberdeen", postcode: "ab52", country: "uk" )
job6.address = addressjob6
company1.jobs << job6
job6.qualifications << qualification1
