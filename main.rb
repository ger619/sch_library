require_relative './app'

def main
  app = App.new
  app.start_program
end

def option_menu
  puts
  puts 'Choose an option by entering a number: '
  puts '1 - List All Books'
  puts '2 - List All People'
  puts '3 - Create A Person'
  puts '4 - Create A Book'
  puts '5 - Create A Rental'
  puts '6 - List All Rentals For A Given Person ID'
  puts '7 - Exit'
end

def option(input)
  case input
  when '1'
    list_all_books
  when '2'
    list_all_people
  when '3'
    create_person
  when '4'
    create_book
  when '5'
    create_rental
  when '6'
    list_rentals
  else
    puts 'Please enter a number between 1 and 7.'
  end
end

main
