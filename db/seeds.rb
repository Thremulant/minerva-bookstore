
# CLEAN ALL
# rake db:drop db:create db:migrate VERSION=0

Genre.destroy_all
Author.destroy_all
Book.destroy_all
Province.destroy_all
OrderState.destroy_all
Order.destroy_all

horror = Genre.create(name: 'Horror')
poe = Author.create(name: 'POe')

stories = Book.create(name: 'Narraciones', author: poe, genre: horror, price:10)
poems = Book.create(name: 'Poems', author: poe, genre: horror)

manitoba = Province.create(name: 'MB')
customer = Customer.create(name:'pending', province: manitoba)
pending = OrderState.create(name:'pending')

order = Order.create(order_state: pending, customer: customer)
order.books << stories (price: stories.price)




