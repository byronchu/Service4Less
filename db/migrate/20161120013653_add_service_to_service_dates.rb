class AddServiceToServiceDates < ActiveRecord::Migration
  def change
    add_reference :service_dates, :service, index: true, foreign_key: true
  end
end
