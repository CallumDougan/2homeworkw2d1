class Fish

  def initialize (type)
    @type = type
  end

  def type
    @type
  end


end


class River

  def initialize (name,*fish)
    @name = name
    @wildlife = fish
  end

  def fish_list
    @wildlife
  end

  def welcome
    puts "Welcome to the River #{@name}.  "
  end

  def health_check
   puts "Current fish stocks: \n\n"
    @wildlife.each do |fish|
      puts fish.type
    end
    " \n\n\n"
  end
end  




class Bear

  def initialize (name, type, food)
    @name = name
    @type = type
    @food = []
  end

  def roar
    puts "#{@name} the #{@type} roars!  It's mildly intimidating, actually."
  end

  def food
    puts "#{@name} contains: \n\n"
    @food.each do |food|
      puts food.type
    end
    puts "\n\n"
  end

  def catch_fish (river)
    puts "#{@name} catches a fish!"
    @food << river.fish_list.pop
    # puts "#{@name} ate a #{@food}"
  end

end