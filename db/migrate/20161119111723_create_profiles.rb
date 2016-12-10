class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.string :name
      t.string :phone
      t.string :country
      t.string :state
      t.string :city
      t.boolean :service_provider
      t.string :provider_name
      t.string :provider_logo_url

      t.timestamps null: false
    end
  end
end
