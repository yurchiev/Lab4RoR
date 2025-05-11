class User < ApplicationRecord
  has_many :expenses

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
