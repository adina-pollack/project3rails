class Concert < ApplicationRecord
  belongs_to :venue
  has_many :bands
end
