class RenameEventUsersToAttendances < ActiveRecord::Migration[7.1]
  def change
    rename_table :event_users, :attendances
    rename :event_user, :attendance
  end
end
