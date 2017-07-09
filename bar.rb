class Bar

  require_relative 'room.rb'
  require_relative 'guest.rb'
  require_relative 'song.rb'
  require_relative 'drink.rb'

  attr_reader :capacity, :drinks
  attr_accessor :people, :playlist

  def initialize()
    @capacity = 2
    @people = []
    @playlist = []
    @drinks = []
    @money = 0
  end

  def add_drink_to_bar(drink)
    @drinks << drink
  end

  def add_person_to_bar(person)
    if @people.count < @capacity then
      @people << person
    else 
      return "Sorry buddy, the bars full"   
    end 
  end

  def add_song_to_bar(song)
    @playlist << song
  end

  def add_tab(person)
    @tabs << {:person => person, :drinks => []}
  end

  def add_drink_to_tab(person, drink)
    for tab in tabs
      if :person == person then
        :drinks << drink
      end
    end
  end

end