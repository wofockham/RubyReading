class CreateShelvings < ActiveRecord::Migration[7.1]
  def change
    create_table :shelvings do |t|

      t.timestamps
    end
  end
end
