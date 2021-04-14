ActiveAdmin.register Order do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :subtotal, :pst, :gst, :hst, :total, :order_state_id, :customer_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:subtotal, :pst, :gst, :hst, :total, :order_state_id, :customer_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :name, :subtotal, :total, :pst, :gst, :hst, :order, :customer
end
