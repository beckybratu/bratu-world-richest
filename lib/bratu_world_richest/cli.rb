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

  def menu
    input = nil
    puts "Enter the number of the billionaire you'd like to get to know or type 'list' to see the Top 3:"
    input = gets.strip.downcase
    case input
    when "list"
      list_richest
      menu
    when "1"
      puts "This billionaire comes from #{BratuWorldRichest::Richest.all[0].country} and owes his fortune of #{BratuWorldRichest::Richest.all[0].networth} to #{BratuWorldRichest::Richest.all[0].industry}."
      list_richest
      menu
    when "2"
      puts "This billionaire comes from #{BratuWorldRichest::Richest.all[1].country} and owes his fortune of #{BratuWorldRichest::Richest.all[1].networth} to #{BratuWorldRichest::Richest.all[1].industry}."
      list_richest
      menu
    when "3"
      puts "This billionaire comes from #{BratuWorldRichest::Richest.all[2].country} and owes his fortune of #{BratuWorldRichest::Richest.all[2].networth} to #{BratuWorldRichest::Richest.all[2].industry}."
      list_richest
      menu
    when "exit"
      goodbye
    else
      puts "You look lost. Type 'list' or 'exit'."
      list_richest
    menu
    end

  end

  def goodbye
    puts "Thanks for visiting! Go make some money so you can be on this list someday!"
  end

end
