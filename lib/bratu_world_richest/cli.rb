#My CLI controller

class BratuWorldRichest::CLI

  def call
    list_richest
    menu
    goodbye
  end

  def list_richest
    puts "These are the three richest people in the world today:"
    @richest = BratuWorldRichest::Richest.now
    @richest.each.with_index(1) do |rich_person, i|
      puts "#{i}. #{rich_person.name} - Net worth: #{rich_person.networth} - Source of wealth: #{rich_person.source}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the billionaire you'd like to get to know or type 'list' to see the Top 3:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_richest = @richest[input.to_i - 1]
        puts "#{the_richest.name} - Net worth: #{the_richest.networth} - Source of wealth: #{the_richest.source}"
      elsif input == "list"
        list_richest
      else
        puts "You look lost. Type 'list' or 'exit'."
      end
    end
  end

  def goodbye
    puts "Thanks for visiting! Go make some money so you can be on this list someday!"
  end

end
