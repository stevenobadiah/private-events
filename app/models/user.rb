class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, foreign_key: "creator_id", class_name: "Event"

  has_many :attendances, foreign_key: "attendee_id", class_name: "Attendance"
  has_many :event_attendeds, through: :attendances

  has_many :invitations, foreign_key: "invitated_user_id", class_name: "Invitation"
  has_many :recipients, through: :invitations
end
