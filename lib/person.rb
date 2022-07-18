# your code goes here
require "pry"

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  #   attr_writer :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(number)
    if number > 10
      @happiness = 10
    elsif number < 0
      @happiness = 0
    else
      @happiness = number
    end
  end

  def hygiene=(number)
    if number > 10
      @hygiene = 10
    elsif number < 0
      @hygiene = 0
    else
      @hygiene = number
    end
  end

  def happy?
    if self.happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if self.hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(amount)
    @bank_account = self.bank_account + 100
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene = (@hygiene + 4)

    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = (@hygiene - 3)
    self.happiness = (@happiness + 2)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3

    friend.happiness = friend.happiness + 3
    # binding.pry
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness = @happiness - 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
