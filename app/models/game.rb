class Game < ApplicationRecord
  belongs_to :user
  has_one :chatroom
  has_many :players
  validates  :price, presence: true
  validates  :game_size, presence: true
  validates  :date, presence: true
  validates  :location, presence: true
  validates  :description, presence: true

  # has_one_attached :photo
end
