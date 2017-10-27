class Place < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user
  geocoded_by :address
  validates :address, presence: true
  after_validation :geocode, if: ->(obj) { obj.address.present? && obj.address_changed? }
end
