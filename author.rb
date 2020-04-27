class Author

    attr_accessor
    attr_reader :name, :pen_name
    @@all = []

    def initialize(name, pen_name = nil)
        @name = name
        @pen_name = pen_name
        @@all << []
    end

    def books
        book = BookAuthor.all.select do |ba|
            ba.author == self
        end
        book.map do |ba|
            ba.book
        end
    end

    def pages_written
        self.books.inject(0) {|total, book|  total += book.pages}
    end

    def book=(book)
        BookAuthor.new(book, self)
    end

    def write_book(title, pages, genre)
        book = Book.new(title, pages, genre)
        BookAuthor.new(book, self)
        return book
    end

    def fun_saying

        if self.pen_name 
            "Hi, my name is #{self.name}, my pen name is #{self.pen_name}.  I have written #{self.pages_written.to_s} pages."
        else
            "Hi, my name is #{self.name}, and I do not have a pen name.  I have written #{self.pages_written.to_s} pages."
        end
        
    end

    def self.all
        @@all
    end

end