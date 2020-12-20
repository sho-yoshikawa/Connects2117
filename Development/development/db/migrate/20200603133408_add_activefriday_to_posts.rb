class AddActivefridayToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :activefriday, :string
  end
end
