require_relative 'BookDataStore.rb'

class BookShop
  def initialize book_id, book_data
    @id=book_id
    @book_data=book_data
  end 
  
  def author
   authorname= @book_data.get_author_name(@id)
   return "Author name is "+authorname
  end
  
  def publisher
   publishername=@book_data.get_publisher_name(@id)
   return "Publisher name is"+publishername
  end


end

@obj=BookDataStore.new
@shop=BookShop.new(142,@obj)
puts @shop.author
puts @shop.publisher
