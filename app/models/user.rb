class User < ApplicationRecord
    has_secure_password
    has_many :gardens
    has_many :houseplants, through: :garden
end