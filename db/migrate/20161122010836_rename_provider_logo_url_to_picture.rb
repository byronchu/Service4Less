class RenameProviderLogoUrlToPicture < ActiveRecord::Migration
  def change
    rename_column :profiles, :provider_logo_url, :picture
  end
end
