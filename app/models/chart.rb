class Chart < ApplicationRecord
  has_many :songs, dependent: :destory
  has_many :charts, through: :songs
end
