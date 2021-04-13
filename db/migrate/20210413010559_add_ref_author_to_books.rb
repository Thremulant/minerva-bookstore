class AddRefAuthorToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :author_id, :reference
  end
end
