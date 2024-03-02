class RemoveAttendeeIdFromEvents < ActiveRecord::Migration[7.1]
  def change
    remove_column :events, :attendee_id
  end
end
