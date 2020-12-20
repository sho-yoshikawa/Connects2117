class AddPeople4ToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :people4, :string
  end
end
