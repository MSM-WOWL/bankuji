class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :area,       null: false
      t.string :store_name, null: false
      t.string :product,    null: false
      t.string :lottery,    null: false
      t.text :comment,      null: false
      t.references :user,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
