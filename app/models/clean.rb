class Clean < ApplicationRecord
	validates :date, presence: true, length: { maximum: 50 }
	validates :kind, presence: true, length: { maximum: 50 }
end
