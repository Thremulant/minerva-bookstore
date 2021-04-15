ActiveAdmin.register Order do
  permit_params :name, :subtotal, :total, :pst, :gst, :hst, :customer, :books, :order_state,
                all_books: %i[id name _destroy]

  # form do |f|
  #   f.semantic_errors # shows errors on :base
  # f.has_many :books,
  #            new_record: 'Add',
  #            remove_record: 'Remove',
  #            allow_destroy: ->(c) { c.books?(current_admin_user) } do |b|
  #   b.input :name
  # end
  # f.inputs
  #   f.inputs :books do |b|
  #     # b.has_many :order_state do |i|
  #     # # b.input :books
  #     # # s.name
  #     # # s.input :books, :as => :select, :multiple => false, :collection => Book.all.map { |u| [u.name, u.id] }
  #     # end
  #   end
  #   f.actions         # adds the 'Submit' and 'Cancel' buttons
  # end

  # form do |f|
  #   # f.input do
  #   f.has_many :books_orders,
  #             new_record: 'Add',
  #             remove_record: 'Remove',
  #     #         allow_destroy: -> (c) { c.author?(current_admin_user) } do |b|
  #     # b.input :name
  #   # end
  #   # end
  # end
  show do
    panel 'Books list' do
      table_for order.books_orders.all do
        column :name
        column :price
      end
    end
  end
  sidebar 'Details', only: :show do
    form do |f|
      f.semantic_errors
      f.inputs
      f.actions # shows errors on :base
    end
  end
  # sidebar 'Details' do
  #   form do |f|
  #     f.semantic_errors
  #     f.inputs
  #     f.actions # shows errors on :base
  #   end
  # end
end
