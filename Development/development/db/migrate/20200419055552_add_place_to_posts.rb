class AddPlaceToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :place, :text
  end
end
