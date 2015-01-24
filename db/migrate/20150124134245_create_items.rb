class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :number
      t.float :tax

      t.timestamps null: false
    end
  end
end
