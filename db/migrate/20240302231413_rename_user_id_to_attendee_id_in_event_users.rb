class RenameUserIdToAttendeeIdInEventUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :event_users, :user_id, :attendee_id
  end
end
