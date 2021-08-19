class AddActivemondayToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :activemonday, :text
  end
end
