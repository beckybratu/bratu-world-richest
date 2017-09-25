class BratuWorldRichest::Richest
  attr_accessor :name, :networth, :moneysource, :url

  def self.now
    three_richest = []
    three_richest << self.scrape_forbes
    three_richest
  end

  def self.scrape_forbes
    rich = self.new
    doc = Nokogiri::HTML(open("https://www.forbes.com/billionaires/list/"))
    rich.name = doc.search("#name.a").text
    binding.pry
  #  networth = doc.search
  #  moneysource = doc.search()
    rich
  #  three_richest
  end

end
