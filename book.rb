class Book

    attr_accessor
    attr_reader :title, :pages, :genre
    @@all = []

    def initialize(title, pages, genre)
        @title = title
        @pages = pages
        @genre = Genre.new_genre(genre)
        @@all << self
    end

    def add_author(author)
        BookAuthor.new(self, author)
    end

    def self.longest_book
        self.all.max_by {|book| book.pages}
    end

    def self.top_genre
        hash = Hash.new(0)
        self.all.each {|book| hash[book.genre] += 1}
        hash.max_by {|k, v| v}
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