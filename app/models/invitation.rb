class Invitation < ApplicationRecord
    belongs_to :recipient, class_name: "User"
    belongs_to :coordinated_events, class_name: "Event"
end
