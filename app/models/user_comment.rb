class UserComment < ApplicationRecord
  validates :comment, presence: true
  validates :ip_address, presence: true
end
