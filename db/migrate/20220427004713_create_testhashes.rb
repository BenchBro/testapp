class CreateTesthashes < ActiveRecord::Migration[7.0]
  def change
    create_table :testhashes do |t|
      t.string :test1
      t.string :test2
      t.string :test3
      t.string :string
      t.string :test4
      t.string :test5

      t.timestamps
    end
  end
end
