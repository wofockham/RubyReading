class CreateJoinTableShelvings < ActiveRecord::Migration[7.1]
  def change
    create_join_table :books, :shelves, :table_name => :shelvings do |t|
      t.index [:book_id, :shelf_id]
      t.index [:shelf_id, :book_id]
    end
  end
end
