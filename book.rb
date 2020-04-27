class Book

    attr_accessor
    attr_reader :title, :pages, :genre
    @@all = []

    def initialize(title, pages, genre)
        @title = title
        @pages = pages
        @genre = genre
        @@all << self
    end

    def author=(author)
        BookAuthor.new(self, author)
    end


    def authors
        author = BookAuthor.all.select do |ba|
            ba.book == self
        end
        author.map do |ba|
            ba.author
        end
    end

    def self.all
        @@all
    end

end