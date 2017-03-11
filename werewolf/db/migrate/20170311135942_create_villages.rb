class CreateVillages < ActiveRecord::Migration[5.0]
  def change
    create_table :villages do |t|
      t.string :name
      t.text :describe
      t.integer :day
      t.integer :silent
      t.integer :job
      t.boolean :lock
      t.integer :code
      t.integer :number
      t.boolean :secret

      t.timestamps
    end
  end
end
