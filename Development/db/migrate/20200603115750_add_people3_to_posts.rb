class AddPeople3ToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :people3, :string
  end
end
