class AddActivethursdayToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :activethursday, :string
  end
end
