require_relative('models/tickets')
require_relative('models/film')
require_relative('models/customer')

require('pry-byebug')

Tickets.delete_all()
Film.delete_all()
Customer.delete_all()


  film1 = Film.new({
    'title' => 'La La Land',
    'price' => 8
  })

  film1.save()


  film2 = Film.new({
    'title' => 'Gangster Squad',
    'price' => 7
  })

  film2.save()

  film3 = Film.new({
    'title' => 'Crazy Stupid Love',
    'price' => 5
  })

  film3.save()

  customer1 = Customer.new({
    'name' => 'Emma',
    'funds' => 28
  })

  customer1.save()


  customer2 = Customer.new({
    'name' => 'Ryan',
    'funds' => 30
  })

  customer2.save()

  customer3 = Customer.new({
    'name' => 'Nick',
    'funds' => 22
  })

  customer3.save()

  ticket1 = Tickets.new({'film_id' => film1.id, 'customer_id' => customer1.id, 'fee' => 8})
  ticket2 = Tickets.new({'film_id' => film1.id, 'customer_id' => customer2.id, 'fee' => 8})
  ticket3 = Tickets.new({'film_id' => film2.id, 'customer_id' => customer2.id, 'fee' => 7})
  ticket4 = Tickets.new({'film_id' => film2.id, 'customer_id' => customer3.id, 'fee' => 7})
  ticket5 = Tickets.new({'film_id' => film2.id, 'customer_id' => customer1.id, 'fee' => 7})
  ticket6 = Tickets.new({'film_id' => film3.id, 'customer_id' => customer2.id, 'fee' => 5})
  ticket7 = Tickets.new({'film_id' => film3.id, 'customer_id' => customer3.id, 'fee' => 5})

  ticket1.save()
  ticket2.save()
  ticket3.save()
  ticket4.save()
  ticket5.save()
  ticket6.save()
  ticket7.save()

  binding.pry
  nil
