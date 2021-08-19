class AddDrinkToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :drink, :text
  end
end
