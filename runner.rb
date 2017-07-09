require_relative 'bar.rb'
require_relative 'room.rb'
require_relative 'guest.rb'
require_relative 'song.rb'
require_relative 'drink.rb'
require 'pry'

@drink1 = Drink.new("Beer", 2.50)
@drink2 = Drink.new("Wine", 3.00)
@drink3 = Drink.new("Cocktail", 5.00)

@song1 = Song.new("Wonderwall", "Oasis")
@song2 = Song.new("Waterfall", "Stone Roses")
@song3 = Song.new("Live Forever", "Oasis")
@song4 = Song.new("One", "Metallica")
@song5 = Song.new("One", "Ed Sheran")

@bar = Bar.new()

@bar.add_drink_to_bar(@drink1)
@bar.add_drink_to_bar(@drink2)
@bar.add_drink_to_bar(@drink3)

@bar.add_song_to_bar(@song1)
@bar.add_song_to_bar(@song2)
@bar.add_song_to_bar(@song3)
@bar.add_song_to_bar(@song4)
@bar.add_song_to_bar(@song5)

@room1 = Room.new("Green Room", 1, 10)
@room2 = Room.new("Blue Room", 2, 5)

@guest = []

total_capacity = 5
guest_count = 0

puts "Welcome to the CodeClan Caraoke!"
while true
  puts "What would you like to do?"
  puts "Please select an option from the list."
  puts "======================================"
  puts "1. Add a guest"
  puts "2. View a room"
  puts "3. View the bar"
  puts "q. Quit"

  choice = gets.chomp
  case choice
    when "q"
    break
    when "1"
        puts "Please enter guest name"
        guest_name = gets.chomp
        puts "How much money does the guest have"
        guest_money = gets.chomp
        puts "What's the guests favourite song"
        guest_fav_song = gets.chomp
        puts "What's artist of favourite song"
        guest_fav_song_artist = gets.chomp

        @guest << Guest.new(guest_name, guest_money.to_f, guest_fav_song, guest_fav_song_artist)

        while true
          puts "What room does the guest want to go in to?"
          puts "=========================================="
          puts "1. Bar (free entry)"
          puts "2. Green Room (£10 entry)"
          puts "3. Blue Room (£5 entry)"

          choice = gets.chomp
          case choice

          when "1"
            @bar.add_person_to_bar(@guest[guest_count])
            guest_count += 1
            break
          when "2"
            @room1.add_guest_to_room(@guest[guest_count])
            guest_count += 1
            break
          when "3"
            @room2.add_guest_to_room(@guest[guest_count])
            guest_count += 1
            break
        
        end
      end

    when "2"
      puts "Which room would you like to view."
      puts "=================================="
      puts "1. Bar"
      puts "2. Green Room"
      puts "3. Blue Room"

      choice = gets.chomp
      case choice

      when "1"

      end
    end
    
    
  
end