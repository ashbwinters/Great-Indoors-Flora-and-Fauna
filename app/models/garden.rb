class Garden < ApplicationRecord
  belongs_to :user
  belongs_to :houseplant
end
