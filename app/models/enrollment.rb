class Enrollment < ApplicationRecord
  belongs_to :user, class_name: "User", optional: true
  belongs_to :invitee, class_name: "User"  
  belongs_to :event
end