class AddUserToModels < ActiveRecord::Migration[7.1]
  def change
    tables = [:books, :shelves, :shelvings]

    tables.each do |table_name|
      add_column table_name, :user_id, :integer
    end
  end
end
