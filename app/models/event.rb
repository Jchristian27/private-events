class Event < ApplicationRecord
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user

  scope :past_events, -> { where("date < ?", Date.today) }
  scope :upcoming_events, -> { where("date > ?", Date.today) }

  scope :previously_attended_events_for_user, ->(user_id) do
    joins(:attendances)
      .where(attendances: { attendee_id: user_id })
      .past_events
  end

  scope :upcoming_attended_events_for_user, ->(user_id) do
    joins(:attendances)
      .where(attendances: { attendee_id: user_id })
      .upcoming_events
  end

  def attendee_ids
    attendees.map(&:id)
  end
end
