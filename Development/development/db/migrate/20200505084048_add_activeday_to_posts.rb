class AddActivedayToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :activeday, :text
  end
end
