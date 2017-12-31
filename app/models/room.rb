class Room < ApplicationRecord
  belongs_to :cinema
  has_many :chairs
end
