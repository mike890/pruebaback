# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Work.destroy_all

u1 = User.create(name:'User1', email:'correo1')
u2 = User.create(name:'User2', email:'correo2')

Work.create(description: 'trabajo1', user_id: u1.id)
Work.create(description: 'trabajo2', user_id: u2.id)
Work.create(description: 'trabajo3', user_id: u1.id)

Work.all.each do |w|
  u = w.user
  puts u.inspect
end
