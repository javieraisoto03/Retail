# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

50.times do |i|
    Product.create(nombre: Faker::Food.fruits, precio: "#{i*3}", descripcion: Faker::Food.description, cantidad: rand(1..10))
end

50.times do |i|
    Client.create(nombre: Faker::Name.name, email: "usuario#{1}@gmail.com")
end

50.times do |i|
    Order.create(monto: "#{i**2}", fechaorden: Faker::Date.backward(days: 14), product_id: rand(1..50) , client_id: rand(1..50))
end
