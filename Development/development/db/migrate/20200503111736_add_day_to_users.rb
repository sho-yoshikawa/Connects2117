class AddDayToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :day, :text
  end
end
