class AddSportToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :sport, :text
  end
end
