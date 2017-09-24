class BratuWorldRichest::Richest
  attr_accessor :name, :networth, :source, :url

  def self.now
    #returns instances of current wealthiest people
    self.scrape_forbes
  end

  def self.scrape_forbes

    three_richest =[]

    richest_1 = self.new
    richest_1.name = "Buffet"
    richest_1.networth = "75 billion"
    richest_1.source = "Berkshire Hathaway"
    richest_1.url = "https://www.forbes.com/profile/warren-buffett/?list=billionaires"

    richest_2 = self.new
    richest_2.name = "Gates"
    richest_2.networth = "86 billion"
    richest_2.source = "Microsoft"
    richest_2.url = "https://www.forbes.com/profile/bill-gates/?list=billionaires"

    three_richest
  end

end
