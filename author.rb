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

    def self.all
        @@all
    end

end