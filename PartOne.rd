class Library

attr_accessor :names_of_books
attr_accessor :number_of_shelves
attr_reader :shelves
  @@shelves = []
end

class Shelf < Library
	attr_accessor :name

	def initialize(name)
	end
end

class Book < Library
	attr_accessor :name
	attr_accessor :shelved
	attr_accessor :shelf


	def initialize (name, shelf)
		@name = name
		@shelf = shelf
		@shelved = true
	end
	def enshelf(shelf_name)
			@shelf = shelf_name
			@shelved = true
	end
	def unshelf
		if @shelved
			@shelved = false
			@shelf = nil
		else
		end

	end
end


mystery = Shelf.new("Mystery")
childrens = Shelf.new("Childrens")
fiction = Shelf.new("Fiction")
nonfiction = Shelf.new("Nonfiction")
comics = Shelf.new("Comics")
comics = Shelf.new("Comics")

hp = Book.new("Happy Potter and the Goblet of Fire", "Childrens")
wandp = Book.new("War and Peace", "Fiction")
sand = Book.new("Sandman", "Comics")
white = Book.new("The Devil in the White City", "Nonfiction")
diary = Book.new("The Diary of a Young Girl", "Nonfiction")
abraham = Book.new("Abraham Lincoln: Vampire Hunter", "Nonfiction")
wasteland = Book.new("The Waste Lands", "Fiction")
wolves = Book.new("Wolves of the Calla", "Fiction")
amber = Book.new("The Amber Spyglass", "Childrens")
engine = Book.new("The Little Engine That Could", "Childrens")
necronomicon = Book.new("Necronomicon", "Mystery")


@@book_set = [hp, wandp, sand, white, diary, abraham, wasteland, wolves, amber, engine, necronomicon]
@@shelf_set = [mystery, childrens, fiction, nonfiction, comics]
@@shelf_string_set = ["Mystery", "Childrens", "Nonfiction", "Fiction", "Comics"]
@@book_string_set = ["Happy Potter and the Goblet of Fire", "War and Peace", "Sandman", "The Devil in the White City", "The Diary of a Young Girl", "Abraham Lincoln: Vampire Hunter", "The Waste Lands", "Wolves of the Calla", "The Amber Spyglass", "The Little Engine That Could", "Necronomicon"]

loop do
	puts "Welcome to Library. What would you like to do?\n1. List all books.\n2. Search shelves.\n3: Shelf/Unshelf book\n4. Exit"
	
	input = gets.chomp
	if input == "1"
	
		puts hp.name
		puts wandp.name
		puts sand.name
		puts diary.name
		puts abraham.name
		puts wasteland.name
		puts wolves.name
		puts amber.name
		puts engine.name
		puts necronomicon.name


	elsif input == "2"
		puts "Which shelf? There are #{@@shelf_set.count} shelves: Fiction, Nonfiction, Childrens, Comics and Mystery"
			input2 = gets.capitalize.chomp

				if @@shelf_string_set.include?(input2)
					x = @@book_set.length
					loop do x -= 1
						if(@@book_set[x].shelf == input2)
							puts @@book_set[x].name
						end
						break if x==0
					end

				#hp.shelf = "a different name"
				#puts hp.shelf
				else puts "We do not have that section"
			end

	elsif input == "3"
		puts "Which book would you like to shelf or unshelf?"
		input2 = gets.chomp.split(' ').map(&:capitalize).join(' ')
		x = @@book_set.length
		loop do x -= 1
			if(@@book_string_set[x] == input2)
				if(@@book_set[x].shelved == false)
					puts "Which shelf? There are #{@@shelf_set.count} shelves: Fiction, Nonfiction, Childrens, Comics and Mystery"
					input3 = gets.capitalize.chomp
					if @@shelf_string_set.include?(input3)
						@@book_set[x].enshelf(input3)
						puts "#{input2} has been enshelved to #{input3}."
						break
					else
						puts "That section does not exist."
					end
					break
				else
					@@book_set[x].unshelf()
					puts "#{input2} has been unenshelved."
					break
				end
			else
			end
			
			if x==0
				puts "The book does not exist in this library."
			else
			end
			break if x==0
		end
	elsif input == "4"
	puts "Bye"
	break
	end

end







