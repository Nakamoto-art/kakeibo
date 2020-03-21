class CreateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|
      t.date :date, null: false
      t.integer :name, null: false, default: 0, limit: 1
      t.integer :price, null: false
      t.text :description
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end