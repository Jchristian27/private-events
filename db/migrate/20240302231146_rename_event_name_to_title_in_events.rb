class RenameEventNameToTitleInEvents < ActiveRecord::Migration[7.1]
  def change
    rename_column :events, :event_name, :title
  end
end
