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
        self.books.sum {|book| book.pages}
    end

    def book=(book)
        BookAuthor.new(book, self)
    end

    def write_book(title, pages, genre)
        BookAuthor.new(Book.new(title, pages, genre), self)
    end

    def self.all
        @@all
    end

end