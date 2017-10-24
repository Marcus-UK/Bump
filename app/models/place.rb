class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  validates :address, presence: true
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
