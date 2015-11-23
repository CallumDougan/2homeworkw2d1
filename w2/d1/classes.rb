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

  def type
    @wildlife.each do |fish|
      puts @type
    end
  end

  def welcome
    puts "Welcome to the River #{@name}.  "
  end

  def health_check
    puts "Current fish stocks: \n\n #{type} \n\n"
  end

end  




class Bear

  def initialize (name, type)
    @name = name
    @type = type
    food = []
  end

  def roar
    puts "#{@name} the #{@type} roars!  It's mildly intimidating, actually."
  end

  def catch_fish

  end

end