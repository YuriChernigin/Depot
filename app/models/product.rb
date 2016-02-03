class Product < ActiveRecord::Base
	validates :title, :description, :image_url, :price, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|png|jpg)\Z}i,
		message: 'URL must be image in format: gif, jpg or png.'
	}
	
end
