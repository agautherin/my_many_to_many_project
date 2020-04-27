require_relative "./author.rb"
require_relative "./book.rb"
require_relative "./bookauthor.rb"
require_relative "./genre.rb"
require 'pry'


jk_rowling = Author.new("Joanne Rowling", "J. K. Rowling")
tolkein = Author.new("John Ronald Reuel Tolkien", "J. R. R. Tolkein")
dr_seuss = Author.new("Theodor Seuss Geisel", "Dr. Seuss")

harry_potter = Book.new("Harry Potter", 400, "adventure")
hobbit = Book.new("The Hobbit", 200, "fantasy")
green_eggs = Book.new("Green Eggs & Ham", 25, "non-fiction")

ba1 = BookAuthor.new(harry_potter, jk_rowling)
ba2 = BookAuthor.new(hobbit, tolkein)
ba3 = BookAuthor.new(green_eggs, dr_seuss)

harry2 = jk_rowling.write_book("Harry Potter 2", 500, "adventure")
harry3 = jk_rowling.write_book("Harry Potter 3", 600, "adventure")

# pp jk_rowling.pages_written

# pp Author.all
#pp tolkein.fun_saying

# harry2 = Book.new("Harry Potter 2", 500, "adventure")
# harry3 = Book.new("Harry Potter 3", 600, "adventure")

# pp harry2.genre
# pp harry3.genre

pp Book.top_genre



