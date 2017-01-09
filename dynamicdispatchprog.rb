
require_relative 'BookDataStore.rb'

class BookShop
  def initialize book_id, book_data
    @id=book_id
    @book_data=book_data
  end 
  
  def author
   mydisplay :author
  end
  
  def publisher
   mydisplay :publisher
  end
 
  def mydisplay x
    name=@book_data.send("get_#{x}_name", @id)
    return "#{x} name is #{name} "
  end

end

@obj=BookDataStore.new
@shop=BookShop.new(142,@obj)
puts @shop.author
puts @shop.publisher
