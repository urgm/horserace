class Race < ActiveRecord::Base
  has_one :program
  has_many :tips
  has_many :bets
end
