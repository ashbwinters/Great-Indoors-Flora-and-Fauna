class Houseplant < ApplicationRecord
    has_many :users, through: :garden
end
