class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.text :description
      t.string :country
      t.string :state
      t.string :city
      t.integer :price
      t.references :dates, index: true, foreign_key: true
      t.string :service_pic_url

      t.timestamps null: false
    end
  end
end
