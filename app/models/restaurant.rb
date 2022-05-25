class Restaurant < ApplicationRecord
  has_many :chinese, :italian, :japanese, :french, :belgian
end
