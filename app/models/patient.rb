class Patient < ApplicationRecord
  has_many :notes
  validates :pID, presence: true,
                    length: { minimum: 4 }
end
