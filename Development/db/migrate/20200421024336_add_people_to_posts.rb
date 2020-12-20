class AddPeopleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :people, :text
  end
end
