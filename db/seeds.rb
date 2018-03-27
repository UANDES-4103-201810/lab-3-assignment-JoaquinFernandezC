# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([{name:'Joaquin', last_name:'Fernandez', phone:'76543210', password:'blabla', address:'blabla 13'},
             {name:'Gustavo', last_name:'Vicuña', phone:'3465786', password:'blabjhfla', address:'blkfabla 13'},
             {name:'Joaquin', last_name:'Vicuña', phone:'76543210', password:'blabla', address:'blabla 13'},
             {name:'Gustavo', last_name:'Fernandez', phone:'5438458210', password:'blablyua', address:'hgkblabla 13'},
             {name:'Joaquin', last_name:'Gustavo', phone:'7654444210', password:'blakljghbla', address:'bnjklabla 13'}])

places = Place.create(name:'FicaCom', address:'Science!', capacity: 300)

events = Event.create([{name: 'Pizzaton', description:'Pizza time', start_date: '11/19/2018', place:places},
                      {name:'Party', description:'Party time', start_date: '12/15/2018', place:places},
                      {name:'Event', description:'Event time', start_date: '3/5/2018', place:places}])

events.each {|event|
  tickets = Ticket.create([{description: 'easy', price: 20, event: event},
                            {description: 'medium', price: 40, event: event},
                            {description: 'hard', price: 60, event: event}])
  users.each{|user|
    Purchase.create(user: user, ticket: tickets[0], time: Time.now)
  }
}

