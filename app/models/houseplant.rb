class Houseplant < ApplicationRecord
    has_many :gardens
    has_many :users, through: :garden
end
