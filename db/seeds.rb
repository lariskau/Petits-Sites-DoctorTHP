require 'faker'


10.times do
  a = rand(1..10)
  doc = Doctor.create(first_name: Faker::Simpsons.character, last_name: Faker::Simpsons.location, postal_code: 61100, city_id: a)
end

10.times do
  a = rand(1..10)
  pat = Patient.create(first_name: Faker::DrWho.actor, last_name: Faker::DrWho.specie, city_id: a)
end

10.times do
  a = rand(1..10)
  b = rand(1..10)
  c = rand(1..10)
  app = Appointment.create(doctor_id: a, patient_id: b, date: Faker::Date.forward(50), city_id: c)
end

10.times do
  city = City.create(city_name: Faker::HarryPotter.location)
end

10.times do
  speciality = Speciality.create(name: Faker::HarryPotter.house)
end
