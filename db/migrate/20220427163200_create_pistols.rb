class CreatePistols < ActiveRecord::Migration[7.0]
  def change
    create_table :pistols do |t|
      t.string :name
      t.string :manufacturer
      t.string :caliber
      t.integer :capacity
      t.integer :age
      t.string :accessories
      t.string :comments
      t.boolean :carry
      t.timestamps
    end
  end
end
