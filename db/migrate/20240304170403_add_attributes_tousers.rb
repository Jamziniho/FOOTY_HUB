class AddAttributestoUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :level, :string
    add_column :users, :preferred_position, :string
    add_column :users, :matches_lost, :integer
    add_column :users, :matches_won, :integer
  end
end
