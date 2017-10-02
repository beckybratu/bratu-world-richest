class BratuWorldRichest::Richest
  attr_accessor :name, :networth, :industry, :url, :rank

  def self.now
    three_richest = []
    three_richest << self.scrape_bloomberg_1
    three_richest << self.scrape_bloomberg_2
    three_richest << self.scrape_bloomberg_3
    three_richest
  end

  def self.scrape_bloomberg_1
    doc = Nokogiri::HTML(open("https://www.bloomberg.com/billionaires/"))

    richest_1 = self.new
    richest_1.name = doc.search("div.table-chart div.table-row div.table-cell.t-name").first.text
    richest_1.networth = doc.search("div.table-chart div.table-row div.table-cell.active.t-nw").first.text
    #richest_1.industry = doc.search.("div.table-chart div.table-row div.table-cell.t-industry").first.text

    richest_1
  end

  def self.scrape_bloomberg_2
    doc = Nokogiri::HTML(open("https://www.bloomberg.com/billionaires/"))

    richest_2 = self.new
    richest_2.name = doc.search("div.table-chart div.table-row div.table-cell.t-name")[1].text
    richest_2.networth = doc.search("div.table-chart div.table-row div.table-cell.active.t-nw")[1].text

    richest_2
  end

  def self.scrape_bloomberg_3
    doc = Nokogiri::HTML(open("https://www.bloomberg.com/billionaires/"))

    richest_3 = self.new
    richest_3.name = doc.search("div.table-chart div.table-row div.table-cell.t-name")[2].text
    richest_3.networth = doc.search("div.table-chart div.table-row div.table-cell.active.t-nw")[2].text

    richest_3
  end


end
