class AddLastSignedInAtToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_signed_in_at, :text
  end
end
