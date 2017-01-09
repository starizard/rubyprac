
require_relative 'BookDataStore.rb'

class BookShop
  def initialize book_id, book_data
    @id=book_id
    @book_data=book_data
    book_data.methods.grep(/^get_(.*)_name$/) { BookShop.mydisplay $1}  
end 
  
  def self.mydisplay x
    define_method x do
      name=@book_data.send("get_#{x}_name", @id)
      return "#{x} name is #{name} "
    end
  end
  
  
end

@obj=BookDataStore.new
@shop=BookShop.new(142,@obj)
puts @shop.author
puts @shop.publisher
puts @shop.isbn
puts "Methods available are: "+(@shop.methods-Object.methods).to_s
