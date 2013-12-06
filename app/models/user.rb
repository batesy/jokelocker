class User < ActiveRecord::Base
  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
  validates :username, uniqueness: true

  has_many :joke_collections
  has_many :jokes, through: :joke_collections

  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications
end
