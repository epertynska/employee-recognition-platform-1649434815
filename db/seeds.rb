# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    6.upto(9) do |i|
        Employee.create!(email: "employee#{i}@sample.com", password: "123456")
    end

    6.upto(9) do |j|
        Kudo.create!(title: "#{j}th kudo", content: "seeds generated one by one", giver: Employee.find_by(email: "employee6@sample.com"), receiver: Employee.find_by(email: "employee7@sample.com"))
    end