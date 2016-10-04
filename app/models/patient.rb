class Patient < ApplicationRecord
  has_many :notes, dependent: :destroy
  validates :pID, presence: true,
                    length: { minimum: 4 }
end
