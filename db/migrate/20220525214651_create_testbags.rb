class CreateTestbags < ActiveRecord::Migration[7.0]
  def change
    create_table :testbags do |t|
      t.string :name
      t.integer :volume, step: 0.1
      t.integer :minweight, step: 0.1
      t.integer :maxweight, step: 0.1
      t.integer :bagweight, step: 0.1
      t.boolean :carry

      t.timestamps
    end
  end
end
