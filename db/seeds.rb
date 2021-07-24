# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

who_goes_first_collection = [
  'Birthday: Day of month (earliest to latest)',
  'Birthday: Day of month (latest to earliest)',
  'First Name: Last letter (from a to z)',
  'First Name: Last letter (from z to a)',
  'Last Name: Last letter (from a to z)',
  'Last Name: Last letter (from z to a)',
  'First Name: First letter (from a to z)',
  'First Name: First letter (from z to a)',
  'Last Name: First letter (from a to z)',
  'Last Name: First letter (from z to a)',
  'Distance: Distance to Colorado (nearest to farthest)',
  'Distance: Distance to Colorado (farthest to nearest)',
  'Most letters in your name',
  'Least letters in your name',
  'Last digits in phone number is the lowest number',
  'Last digits in phone number is the highest number',
  'Closest birthday to today',
  'Smallest street address number',
  'Stayed up the latest last night',
  'Longest hair',
  'Shortest hair',
  'Tallest',
  'Shortest',
  'Age: Oldest',
  'Age: Youngest',
  'Most pets',
  'Least pets',
  'Most siblings',
  'Least siblings'
]

who_goes_first_collection.each do |who_goes_first|
  Pick.create(who_goes_first: who_goes_first)
end
