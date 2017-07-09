require_relative 'bar.rb'
require_relative 'room.rb'
require_relative 'guest.rb'
require_relative 'song.rb'
require_relative 'drink.rb'
require 'pry'

@bar = Bar.new()

@song1 = Song.new("Wonderwall", "Oasis")
@song2 = Song.new("Waterfall", "Stone Roses")
@song3 = Song.new("Live Forever", "Oasis")
@song4 = Song.new("One", "Metallica")
@song5 = Song.new("One", "Ed Sheran")

@room1 = Room.new("Green Room", 1)
@room2 = Room.new("Blue Room", 2)

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

    @guest << Guest.new(guest_name, guest_money, guest_fav_song, guest_fav_song_artist)

    puts "What room does the guest want to go in to?"
    puts "=========================================="
    puts "1. Bar"
    puts "2. Green Room"
    puts "3. Blue Room"

    choice = gets.chomp
    when "1"
      @bar.people << @guest[guest_count]
      guest_count += 1

    end
    


    
  end
end