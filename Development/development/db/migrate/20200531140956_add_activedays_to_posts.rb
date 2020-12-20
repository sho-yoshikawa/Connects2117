class AddActivedaysToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :activedays, :boolean
  end
end
