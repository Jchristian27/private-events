class AttendancesController < ApplicationController

  def create
    @attendance = Attendance.build(attendance_params)

    if @attendance.save
      redirect_to "http://localhost:3000/events/#{params[:event_id]}"
    else
      render "http://localhost:3000/events/#{params[:event_id]}"
      flash.now[:danger] = "Uh oh. Something went wrong!"
    end
  end

  private
  def attendance_params
    params.permit(:event_id, :attendee_id)
  end
end
