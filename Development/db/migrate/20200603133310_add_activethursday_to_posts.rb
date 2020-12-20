class AddActivethursdayToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :activethursday, :text
  end
end
