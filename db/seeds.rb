# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

User.delete_all
Doc.delete_all

User.create(email: "cpcamp2@gmail.com", password: "pennpenn")

20.times do
  Doc.create(title: Faker::SiliconValley.app, content: Faker::VForVendetta.speech, user_id: 1)
end