class CreateServiceDates < ActiveRecord::Migration
  def change
    create_table :service_dates do |t|
      t.date :date
      t.integer :qty_avail

      t.timestamps null: false
    end
  end
end
