
require_relative 'BookDataStore.rb'

class BookShop
  def initialize book_id, book_data
    @id=book_id
    @book_data=book_data
  end 
  
  def self.mydisplay x
    define_method x do
      name=@book_data.send("get_#{x}_name", @id)
      return "#{x} name is #{name} "
    end
  end
  
  mydisplay :author
  mydisplay :publisher
  mydisplay :isbn

end

@obj=BookDataStore.new
@shop=BookShop.new(142,@obj)
puts @shop.author
puts @shop.publisher
puts @shop.isbn
puts "Methods available are: "+@shop.methods.to_s
