class AttendancesController < ApplicationController

  def create
    @attendance = current_user.attendances.build(params)
    @attendance.save
    redirect_to event_path(@attendance.event_id)
  end

  private
  def attendance_params
    params.permit(:event_id)
  end
end