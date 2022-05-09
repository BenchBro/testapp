class CreateTestcampings < ActiveRecord::Migration[7.0]
  def change
    create_table :testcampings do |t|
      t.string :name
      t.integer :weight
      t.integer :volume
      t.boolean :carry

      t.timestamps
    end
  end
end
