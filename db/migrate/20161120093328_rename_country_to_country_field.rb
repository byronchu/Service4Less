class RenameCountryToCountryField < ActiveRecord::Migration
  def change
    rename_column :profiles, :country, :country_field
  end
end
