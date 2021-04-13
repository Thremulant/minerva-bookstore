class AddRefProvinceToCustomer < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :province_id, :reference
  end
end
