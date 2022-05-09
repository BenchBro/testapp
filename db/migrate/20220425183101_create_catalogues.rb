class CreateCatalogues < ActiveRecord::Migration[7.0]
  def change
    create_table :catalogues do |t|
      t.string :name
      t.string :manufacturer
      t.string :caliber
      t.integer :age
      t.integer :capacity
      t.string :accessories
      t.string :comments

      t.timestamps
    end
  end
end
