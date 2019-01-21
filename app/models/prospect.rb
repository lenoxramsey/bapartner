class Prospect < ApplicationRecord
    validates :committeename, presence: true
    validates :contactemail, presence: true
end