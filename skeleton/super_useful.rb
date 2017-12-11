# PHASE 2
def convert_to_int(str)
  begin
    var = Integer(str)
  rescue
    return nil
  end
  return var
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    # puts "OMG, thanks so much for the #{maybe_fruit}! Try again."
    raise CoffeeError
  else
    raise FruitError
  end
end


def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit)
  rescue CoffeeError
    retry
  rescue FruitError
    puts "I HATE THAT!"
end

class FruitError < StandardError
end

class CoffeeError < StandardError
end

class NameError < StandardError
end

class YearsError < StandardError
end

class PastimeError < StandardError
end


# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime

    begin
      raise NameError if @name.length == 0
      raise PastimeError if @fav_pastime.length == 0
      raise YearsError if @yrs_known < 5
    rescue NameError
      puts "Error. Please enter a Name: "
      @name = gets.chomp
      retry
    rescue PastimeError
      puts "Error. Please enter a Pastime: "
      @fav_pastime = gets.chomp
      retry
    rescue YearsError
      puts "Error. Please enter a number of years: "
      @yrs_known = gets.chomp.to_i
      retry
    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end

end
