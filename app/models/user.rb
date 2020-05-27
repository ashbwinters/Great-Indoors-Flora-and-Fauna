class User < ApplicationRecord
    has_secure_password
    has_many :houseplants, through: :garden
end