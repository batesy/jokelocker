class Joke < ActiveRecord::Base
  belongs_to :creator, :class_name => "User"
  has_many :joke_collections
  has_many :users, through: :joke_collections


end
