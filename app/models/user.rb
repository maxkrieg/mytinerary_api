class User < ActiveRecord::Base
  has_many :itineraries, dependent: :destroy
end
