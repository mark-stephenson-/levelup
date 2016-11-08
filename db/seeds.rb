# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ApiUser.create(
  email: 'mark@m12n.co.uk',
  password: ENV['MASTER_PASSWORD']
)
MessageStock.create(
  [
    { message_type: 1, text: 'Message 1' },
    { message_type: 1, text: 'Message 2' },
    { message_type: 1, text: 'Message 3' },
    { message_type: 1, text: 'Message 4' },
    { message_type: 1, text: 'Message 5' }
  ]
)
