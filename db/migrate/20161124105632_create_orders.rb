class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :service, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :qty
      t.integer :price
      t.date :completed

      t.timestamps null: false
    end
  end
end
