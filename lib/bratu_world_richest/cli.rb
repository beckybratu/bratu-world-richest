#My CLI controller
require 'pry'
class BratuWorldRichest::CLI

  def call
    BratuWorldRichest::Scraper.scrape_bloomberg
    list_richest(BratuWorldRichest::Richest.all)
    menu
  end

  def list_richest(arr)
    puts "These are the richest people you are interested in:"
    arr.each.with_index(1) do |rich_person, i|
      puts "#{i}. Name: #{rich_person.name} - Net worth: #{rich_person.networth}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the billionaire you'd like to get to know or type 'list' to see the Top 3:"
      input = gets.strip.downcase

      if input == "list"
        list_richest(BratuWorldRichest::Richest.all)
      elsif input == "exit"
        goodbye
      elsif input == "search"
        puts "What industry do you want to find billionaires for?"
        input = gets.strip
        rich_list = BratuWorldRichest::Richest.by_industry(input)
        list_richest(rich_list)
      elsif input.to_i.between?(1, BratuWorldRichest::Richest.all.size)
        richest = BratuWorldRichest::Richest.all[input.to_i-1]
        puts richest.name
        puts "This billionaire comes from #{richest.country} and earned this fortune by working in #{richest.industry}."
      else
        puts "You look lost. Type a number between 1 and 500, 'list' or 'exit.'"
      end
    end
  end

  def goodbye
    puts "Thanks for visiting! Go make some money so you can be on this list someday!"
  end

end
