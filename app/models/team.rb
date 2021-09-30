class Team < ApplicationRecord
    validates :name, presence: true
    has_many :messages
    serialize :dev_ids
    has_and_belongs_to_many :developers
end
