class AddGenderToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :gender, :string
  end
end
