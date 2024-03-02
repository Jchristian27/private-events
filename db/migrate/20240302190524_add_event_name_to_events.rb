class AddEventNameToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :event_name, :string
  end
end
