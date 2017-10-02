class BratuWorldRichest::Richest
  attr_accessor :name, :networth, :industry, :url, :rank

  def self.now
    three_richest = []
    three_richest << self.scrape_bloomberg
    three_richest
  end

  def self.scrape_bloomberg
    doc = Nokogiri::HTML(open("https://www.bloomberg.com/billionaires/"))
    richest = self.new
    richest.name = doc.search("div.table-chart div.table-row div.table-cell.t-name").first.text
    richest.networth = doc.search("div.table-chart div.table-row div.table-cell.active.t-nw").first.text
    richest.industry = doc.search.text
    richest
  end


end
