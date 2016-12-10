class RenameStateToStateField < ActiveRecord::Migration
  def change
     rename_column :profiles, :state, :state_field
  end
end
