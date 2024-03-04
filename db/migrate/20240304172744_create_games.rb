class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.integer :game_size
      t.datetime :date
      t.string :location
      t.float :price
      t.text :description
      t.string :level
      t.string :result
      t.integer :winning_team
      t.boolean :completed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
