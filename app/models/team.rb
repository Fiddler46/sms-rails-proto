class Team < ApplicationRecord
    validates :name, presence: true
    has_many :messages
    has_and_belongs_to_many :developers
end
