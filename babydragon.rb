class Dragon 

  def initialize name 
    @name = name 
    @asleep = false 
    @stuff_in_belly = 10 
    @stuff_in_intestine = 0 

    puts "#{@name} is born."
  end 

  def feed 
    puts "You feed #{@name}."
    @stuff_in_belly = 10 
    passage_of_time 
  end 

  def walk 
    puts " You walk #{@name}"
    @stuff_intestine = 0 
    passage_of_time 
  end 

  def put_to_bed 
    puts "You put #{@name} to bed"
    @asleep = true 
    4.times do 
      if @asleep 
        passage_of_time
      end 

      if @asleep 
        puts "#{@name} snores, filling the room with smoke"
      end 
    end 
    if @asleep
      @asleep = false 
      puts "#{@name} wakes up slowly"
    end 
  end 

  def toss 
    puts "You toss #{@name} up into the air"
    puts "He giggles, which singes you eyebrows"
    passage_of_time
  end 
  
  def rock 
    puts "You rock #{@name} gently"
    @asleep = true 
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep 
      @asleep = false 
      puts "...but wakes when you stop"

    end 
  end 

  private 
  # private means that the method defines here are methods internal to the object 

  def hungry? 
    @stuff_in_belly <= 2 
  end 

  def poopy? 
    @stuff_in_intestine >= 8 
  end 

  def passage_of_time 
    if @stuff_in_belly > 0 
      # Move food from belly to stuff_intestine
      @stuff_in_belly = @stuff_in_belly  - 1 
      @stuff_in_intestine = @stuff_in_intestine + 1 
    else 
      if @asleep 
        @sleep = false 
        puts "He wakes up suddenly!"
      end 

      puts "#{@name} is starving! Being a dragon that he is, he ate you"
      exit 
    end 

    if @stuff_in_intestine >= 10 
      @stuff_in_intestine = 0 
      puts "Whoops! #{@name} just made a mess!!"
    end 

    if hungry? 
      if @asleep
      @asleep = false 
      puts 'He wakes up suddenly'
    end 
    puts "#{@name}'s stomach grumbles..."
  end 

  if poopy? 
    if @asleep 
      @asleep = false 
      puts "He wakes up suddenly!"
    end 
    puts "#{@name} does the potty dance..."
  end 
  end 
end 

puts "Now the dragon is up for an adoption"
puts "What would you like to name your newly adopted baby dragon?"
name = gets.chomp
pet = Dragon.new name 


while true 
  puts 
  puts "command: feed, toss, walk, rock, put_to_bed, exit"
  command = gets.chomp

  if command == "exit"
    exit 
  elsif command == "feed"
    pet.feed 
  elsif command == "toss"
    pet.toss 
  elsif command == "walk"
    pet.walk
  elsif command == "rock"
    pet.rock 
  elsif command == "put to bed"
    pet.put_to_bed 
  else 
    puts "What? Please type one of the commands"
  end 
end 

