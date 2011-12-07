class Race < ActiveRecord::Base
  has_many :programs
  has_many :tips
  has_many :bets
end
