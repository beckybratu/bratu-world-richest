class BratuWorldRichest::Richest
  attr_accessor :name, :networth, :industry, :country

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

    richest_1
  end

  def self.scrape_richest_1
    doc = Nokogiri::HTML(open("https://www.bloomberg.com/billionaires/"))

    richest_1_more = self.new
    richest_1_more.industry = doc.search("div.table-chart div.table-row div.table-cell.t-industry").first.text
    richest_1_more.country = doc.search("div.table-chart div.table-row div.table-cell.t-country").first.text
    richest_1_more
  end

  def self.scrape_bloomberg_2
    doc = Nokogiri::HTML(open("https://www.bloomberg.com/billionaires/"))

    richest_2 = self.new
    richest_2.name = doc.search("div.table-chart div.table-row div.table-cell.t-name")[1].text
    richest_2.networth = doc.search("div.table-chart div.table-row div.table-cell.active.t-nw")[1].text

    richest_2
  end

  def self.scrape_richest_2
    doc = Nokogiri::HTML(open("https://www.bloomberg.com/billionaires/"))

    richest_2_more = self.new
    richest_2_more.industry = doc.search("div.table-chart div.table-row div.table-cell.t-industry")[1].text
    richest_2_more.country = doc.search("div.table-chart div.table-row div.table-cell.t-country")[1].text
    richest_2_more
  end

  def self.scrape_bloomberg_3
    doc = Nokogiri::HTML(open("https://www.bloomberg.com/billionaires/"))

    richest_3 = self.new
    richest_3.name = doc.search("div.table-chart div.table-row div.table-cell.t-name")[2].text
    richest_3.networth = doc.search("div.table-chart div.table-row div.table-cell.active.t-nw")[2].text

    richest_3
  end

  def self.scrape_richest_3
    doc = Nokogiri::HTML(open("https://www.bloomberg.com/billionaires/"))

    richest_3_more = self.new
    richest_3_more.industry = doc.search("div.table-chart div.table-row div.table-cell.t-industry")[2].text
    richest_3_more.country = doc.search("div.table-chart div.table-row div.table-cell.t-country")[2].text
    richest_3_more
  end


end
