class Concert < ApplicationRecord
  belongs_to :venue
  has_many :bands

  attr_reader :city :id :title


end
