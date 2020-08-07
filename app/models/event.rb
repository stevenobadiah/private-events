class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :attendances, foreign_key: "event_attended_id"
    has_many :event_attendeds, through: :attendances, source: :attendance

    has_many :invitations, foreign_key: "event_invite_id"
    has_many :coordinated_events, through: :invitations, source: :invitation

    validates :title, presence: true
    validates :datetime, presence: true

    scope :upcoming_events, -> { where("datetime > ?", Time.now) }
    scope :previous_events, -> { where("datetime < ?", Time.now) }
end
