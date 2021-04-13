
# CLEAN ALL
# rake db:drop db:create db:migrate VERSION=0
require 'faker'


Genre.destroy_all
Author.destroy_all
Book.destroy_all
Province.destroy_all
OrderState.destroy_all
Order.destroy_all

horror = Genre.create(name: 'Horror')
poe = Author.create(name: 'Poe')

stories = Book.create(name: 'Narraciones', author: poe, genre: horror, price:10)
poems = Book.create(name: 'Poems', author: poe, genre: horror)

manitoba = Province.create(name: 'MB')
customer = Customer.create(name:'pending', province: manitoba)
pending = OrderState.create(name:'pending')

new_order = Order.create(order_state: pending, customer: customer, pst: 0, gst:0, hst:0)

new_books_order = BooksOrder.create(book: stories, order:new_order, price:stories.price, quantity: 1 )

# Define all provinces shortcodes
all_provinces = ['AB', 'BC', 'MB', 'NB', 'NL', 'NS', 'NT', 'NU', 'ON', 'PE', 'QC', 'SK', 'YT']

all_provinces.each do |province|
  Province.create(name: province)
end

# Define all order states
all_order_states = ['PENDING', 'AWAITING PAYMENT', 'AWAITING FULFILLMENT', 'COMPLETED']

all_order_states.each do |state|
  OrderState.create(name: state)
end

# Generate 10 genres
10.times do
  Genre.create(name: Faker::Book.unique.genre)
end

random = Genre.where(id: rand(Genre.count))
puts



# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?