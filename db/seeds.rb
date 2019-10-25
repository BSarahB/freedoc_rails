require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
City.destroy_all
Deal_With_it.destroy_all

#To create data for 



20.times do
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , zip_code: Faker::Address.zip_code, city: City.all.sample)
end

20.times do
  Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end


20.times do
  Appointment.create(date: Faker::Date.forward(days: 23), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
end

20.times do
  City.create(name: Faker::Address.city)
end

Specialty.create(name: "Surgeon")
Specialty.create(name: "Ophtalmologist")
Specialty.create(name: "Geriatre")
Specialty.create(name: "Emergensist")

20.times do
  Deal_with_it.create( specialty: Specialty.all.sample, doctor: Doctor.all.sample)
end






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
