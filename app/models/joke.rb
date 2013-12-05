class Joke < ActiveRecord::Base
  has_many :jokecollections
  has_many :users, through: :jokecollections
end
