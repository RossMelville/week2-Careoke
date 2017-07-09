class Guest

  require_relative 'drink.rb'

  attr_accessor :money, :tab

  def initialize(name, money, fav_song, fav_artist)
    @name = name
    @money = money
    @fav_song = fav_song
    @fav_artist = fav_artist
    @tab = 0

  end

  def guest_name
    return @name
  end

  def money_balance
    return @money
  end

  def pay_money(debit)
    if @money < debit then 
      return "Sorry you don't have enough funds" 
    elsif
      @money -= debit
    end
  end

  def add_drink_to_tab(drink)
    if @money < @tab + drink.price then
      return "Sorry pal you dont have enough cash."
    elsif
      @tab += drink.price
    end
  end

end