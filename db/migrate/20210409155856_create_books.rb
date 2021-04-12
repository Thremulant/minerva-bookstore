class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.decimal :price, precision: 5, scale: 2
      t.text :description
      t.integer :pages
      t.boolean :new

      t.timestamps
    end
  end
end
