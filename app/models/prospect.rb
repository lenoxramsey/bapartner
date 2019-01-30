class Prospect < ApplicationRecord
    validates :committeename, presence: true
    validates :contactemail, presence: true
    validates :user_id, presence: true
    belongs_to :user
end