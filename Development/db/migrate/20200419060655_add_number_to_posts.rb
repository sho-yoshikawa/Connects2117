class AddNumberToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :number, :string
  end
end
