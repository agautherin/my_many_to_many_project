require_relative "./author.rb"
require_relative "./book.rb"
require_relative "./bookauthor.rb"
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

jk_rowling.write_book("Harry Potter 2", 500, "adventure")
jk_rowling.write_book("Harry Potter 3", 600, "adventure")

# pp Author.all
pp tolkein.fun_saying