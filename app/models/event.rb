class Event < ApplicationRecord
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"
  has_many :event_users
  has_many :attendees, through: :event_users, source: :user
end
