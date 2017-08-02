class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.integer :game_id
      t.integer :user_id
      t.string :text
      t.boolean :correct

      t.timestamps
    end
  end
end
