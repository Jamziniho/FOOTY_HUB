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

  include PgSearch::Model
  pg_search_scope :search_by_game_size_and_level,
  against: [ :game_size, :gender, :level ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
