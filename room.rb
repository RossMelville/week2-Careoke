class Room

  require_relative 'guest.rb'
  require_relative 'song.rb'
  require_relative 'bar.rb'

  attr_reader :name, :capacity
  attr_accessor :playlist, :people

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @playlist = []
    @people = []
  end

  def room_capacity
    return @capacity
  end

  def add_song_to_room(added_song)
    @playlist << added_song
  end

  def add_guest_to_room(added_guest)
    if @people.count < @capacity then
      @people << added_guest
    else 
      return "Sorry buddy, rooms full"   
    end 
  end

  def remove_guest_from_room(guest)
    @people.delete(guest)
  end

  def add_song_to_playlist(song)
    @playlist << song
  end

  # def search_song_by_title(search_song)
  #   @songs.select{ |title| title == search_song }
  # end


end