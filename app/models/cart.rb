class Cart 
	attr_accessor :items 
	attr_accessor :total
	
	def initialize 
		@items = [] 
	end 
	
	def add_to_cart(items) 
		@items << item 
	end 
end 