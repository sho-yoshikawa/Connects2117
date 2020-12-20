class AddCollegeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :college, :text
  end
end
