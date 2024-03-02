class Event < ApplicationRecord
  has_many :event_users
  has_many :creator, through: :event_users, foreign_key: "creator_id",
           class_name: "User"
  has_many :attendee, through: :event_users, foreign_key: "attendee_id",
           class_name: "User"
end
