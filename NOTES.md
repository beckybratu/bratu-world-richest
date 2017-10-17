When first running the program, the user is shown the up-to-the-minute list of the world's richest. The user is then invited to choose one of the three people on the list to find out a bit more about them. There are also options to go back to the main list or exit the CLI altogether.

On the inside, the gem consists of three main files, *cli.rb, richest.rb* and *scraper.rb*.

The CLI consists of a general call method that compiles the main three methods that do all the heavy lifting: the Richest class method ".now," list_richest and the menu. The ".now" method takes the information collected by the scrapers and records it into an array. List_richest then looks at the @@all array (saved in an ".all" method in my Richest class) and iterates over it. The output is an ordered list containing the billionaires' names and net worths. The menu method starts by offering the user the option to select one person on the list to get to know better. I wrote this as a case method, a statement for each option the user has. The CLI concludes with a brief goodbye method that puts out a string.

As the scraper methods were crowding my *richest.rb* file, I decided in the refactoring phase to move them to a separate file. There is a scrape method for each rich guy, as each represents a row in the table on Bloomberg's list. The scraped information includes name, networth, industry and country of origin.

Finally, these scrapers feed their information into the Richest class' ".now" method. This also relies on the ".all" method, whose array contains all of the scraped instances. 
