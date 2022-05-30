class User < ApplicationRecord
  has_many :spends
  has_many :points
end
