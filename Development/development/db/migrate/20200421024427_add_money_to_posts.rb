class AddMoneyToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :money, :text
  end
end
