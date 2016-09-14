class Malt < ApplicationRecord
	validates :kind, presence: true, length: { maximum: 50 }
	validates :amount, presence: true, length: { maximum: 50 }

	
end
