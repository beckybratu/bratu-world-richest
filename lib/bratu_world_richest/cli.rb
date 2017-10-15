#My CLI controller
require 'pry'
class BratuWorldRichest::CLI

  def call
    BratuWorldRichest::Richest.now
    list_richest
    menu
  end

  def list_richest
    puts "These are the three richest people in the world right now:"
    BratuWorldRichest::Richest.all.each_with_index do |rich_person, i|
      puts "#{i + 1}. Name: #{rich_person.name} - Net worth: #{rich_person.networth}"
    end
  end

  def input_1
    @richest_1_more = BratuWorldRichest::Richest.all[0]
    puts "This billionaire comes from #{@richest_1_more.country} and owes his fortune to #{@richest_1_more.industry}."
  end

  def input_2
    @richest_2_more = BratuWorldRichest::Richest.all[1]
    puts "This billionaire comes from #{@richest_2_more.country} and owes his fortune to #{@richest_2_more.industry}."
  end

  def input_3
    @richest_3_more = BratuWorldRichest::Richest.all[2]
    puts "This billionaire comes from #{@richest_3_more.country} and owes his fortune to #{@richest_3_more.industry}."
  end

  def menu
    input = nil
    puts "Enter the number of the billionaire you'd like to get to know or type 'list' to see the Top 3:"
    input = gets.strip.downcase
    case input
    when "list"
      list_richest
      menu
    when "1"
      input_1
      list_richest
      menu
    when "2"
      input_2
      list_richest
      menu
    when "3"
      input_3
      list_richest
      menu
    when "exit"
      goodbye
    else
      puts "You look lost. Type 'list' or 'exit'."
      list_richest
    menu
    end

  #   while input != "exit"
  #     puts "Enter the number of the billionaire you'd like to get to know or type 'list' to see the Top 3:"
  #     input = gets.strip.downcase
  #
  #     if input.to_i > 0
  #       the_richest = @three_richest[input.to_i - 1]
  #       puts "#{the_richest.name} - Net worth: #{the_richest.networth}"
  #       buttons
  #     elsif input == "list"
  #       list_richest
  #     elsif input != "exit"
  #       puts "You look lost. Type 'list' or 'exit'."
  #     end
  #   end
  # end
  #
  #   def buttons
  #     input = nil
  #     if input.to_i == 1
  #       input_1
  #     elsif input.to_i == 2
  #       input_2
  #     else input.to_i == 3
  #       input_3
  #     end
    end

  def goodbye
    puts "Thanks for visiting! Go make some money so you can be on this list someday!"
  end

end
