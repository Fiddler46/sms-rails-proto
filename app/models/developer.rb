class Developer < ApplicationRecord
    validates :full_name, presence: true
    has_and_belongs_to_many :teams
end
