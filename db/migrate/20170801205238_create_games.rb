class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.boolean :complete, default: false
      t.integer :image_id

      t.timestamps
    end
  end
end
