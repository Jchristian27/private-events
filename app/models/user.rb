class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :event_users
  has_many :hosted_events, through: :event_users, foreign_key: "creator_id", 
           class_name: "Event"
  has_many :attended_events, through: :event_users, foreign_key: "attendee_id",
           class_name: "Event"
end
