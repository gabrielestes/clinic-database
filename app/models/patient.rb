class Patient < ApplicationRecord
  validates :pID, presence: true,
                    length: { minimum: 4 }
end
