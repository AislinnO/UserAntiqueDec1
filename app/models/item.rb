class Item < ActiveRecord::Base
	validates_presence_of :title, :description, :image_url, :category
	validates_numericality_of :price
	validates_uniqueness_of :title
	validates_format_of :image_url, 
		:with => %r{\.(gif|jpg|png)\z}i, 
		:message => "must be a URL for a GIF, JPG, or PNG image"
	
	def self.find_items_for_sale
		find(:all, :order => "title")
	end
	
	protected 
	def validate 
		errors.add(:price, "should be at least £0.01") if price.nil? || price < 0.01 
	end
 end
