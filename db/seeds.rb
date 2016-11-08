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
    { message_type: 1, text: 'Ok, stop what you are doing.  BREATHE.  THINK.  Are you fully committed to the situation?  Are you adding value? Quickly make a mental note of the ONE thing you can do to get more out of what you are doing.' },
    { message_type: 1, text: 'Passion is an unmatched fuel. Add being happy to that and you have a wonderful formula for good health. - Gary Vee' },
    { message_type: 1, text: 'Stop focusing on dumb shit. Don’t be afraid to break things. Don’t be romantic. Don’t take the time to breathe. Don’t aim for perfect. And whatever you do, keep moving. Reread this a few times' },
    { message_type: 1, text: 'No one can do it alone.  The people you are with right now can help you acheive.  The people you are with might need help to achieve.  Work together and get shit done.' },
    { message_type: 1, text: 'Another pointless meeting?  If its gotta happen, focus on getting one thing out of it.  Any one thing, but focus and make sure it happens.' }
  ]
)
