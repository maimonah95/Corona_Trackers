# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Follow.create(fever:false, cough:false, breath:false, people:'No one')

User.create(email: 'admin@gmail.com',name:'Test',phone:556677,password:'test111',password_confirmation:'test111',role:'Admin')
User.create(email: 'test1@gmail.com',name:'Test1',phone:556677,password:'test111',password_confirmation:'test111')
User.create(email: 'test@gmail.com',name:'Test',phone:556677,password:'test111',password_confirmation:'test111')
