class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.references :village, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
