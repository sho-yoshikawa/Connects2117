class AddActivetuesdayToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :activetuesday, :string
  end
end
