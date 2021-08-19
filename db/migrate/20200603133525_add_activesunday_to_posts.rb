class AddActivesundayToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :activesunday, :text
  end
end
