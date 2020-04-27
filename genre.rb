
class Genre

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.new_genre(genre)
        if !self.all.find {|key| key.name == genre}
            Genre.new(genre)
        else
            self.all.find {|key| key.name == genre}
        end
    end

            

    def self.all
        @@all 
    end

end
