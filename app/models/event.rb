class Event < ApplicationRecord
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user

  scope :past_events, -> { where("date < ?", Date.today) }
  scope :upcoming_events, -> { where("date > ?", Date.today) }

  def attendee_ids
    attendees.map(&:id)
  end
end
