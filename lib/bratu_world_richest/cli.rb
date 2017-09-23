#My CLI controller

class BratuWorldRichest::CLI

  def call
    list_richest
    menu
    goodbye
  end

  def list_richest
    puts "The riche$t people in the world today are:"
    puts "1. Buffet
    2. Gates"
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the billionaire you'd like to get to know or type 'list' to see the Top 5:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Here's how number 1 made a fortune..."
      when "2"
        puts "Here's how number 2 got rich..."
      when "list"
        list_richest
      else
        puts "You look lost. Type 'list' or 'exit'."
      end
    end
  end

  def goodbye
    puts "Thanks for visiting! Go make some money!"
  end

end
