class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :friendships
  has_many :friends, through: :friendships

  has_one :place, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :user_name, presence: true, length: { minimum: 4, maximum: 16 }
end
