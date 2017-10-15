class BratuWorldRichest::Richest
  attr_accessor :name, :networth, :industry, :country, :doc

  @@all = []

  def self.now
    scraper = BratuWorldRichest::Scraper.new
    self.all << scraper.scrape_bloomberg_1
    self.all << scraper.scrape_bloomberg_2
    self.all << scraper.scrape_bloomberg_3
  end

  def self.all
    @@all
  end

end
