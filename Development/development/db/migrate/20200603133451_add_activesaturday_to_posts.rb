class AddActivesaturdayToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :activesaturday, :string
  end
end
