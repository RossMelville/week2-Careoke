class Drink

  require_relative 'room.rb'
  require_relative 'guest.rb'
  require_relative 'song.rb'
  require_relative 'bar.rb'

  attr_reader :type, :price

  def initialize(type, price)
    @type = type
    @price = price

  end



end