class AddActivewednesdayToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :activewednesday, :text
  end
end
