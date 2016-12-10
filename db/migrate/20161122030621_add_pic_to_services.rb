class AddPicToServices < ActiveRecord::Migration
  def change
    add_column :services, :pic, :string
  end
end
