class BratuWorldRichest::Scraper

  attr_accessor :doc

  def initialize
    @doc = Nokogiri::HTML(open("https://www.bloomberg.com/billionaires/"))
  end

  def scrape_bloomberg_1
    richest_1 = BratuWorldRichest::Richest.new
    richest_1.name = doc.search("div.table-chart div.table-row div.table-cell.t-name").first.text
    richest_1.networth = doc.search("div.table-chart div.table-row div.table-cell.active.t-nw").first.text
    richest_1.industry = doc.search("div.table-chart div.table-row div.table-cell.t-industry").first.text
    richest_1.country = doc.search("div.table-chart div.table-row div.table-cell.t-country").first.text
    richest_1
  end

  def scrape_bloomberg_2
    richest_2 = BratuWorldRichest::Richest.new
    richest_2.name = doc.search("div.table-chart div.table-row div.table-cell.t-name")[1].text
    richest_2.networth = doc.search("div.table-chart div.table-row div.table-cell.active.t-nw")[1].text
    richest_2.industry = doc.search("div.table-chart div.table-row div.table-cell.t-industry")[1].text
    richest_2.country = doc.search("div.table-chart div.table-row div.table-cell.t-country")[1].text
    richest_2
  end

  def scrape_bloomberg_3
    richest_3 = BratuWorldRichest::Richest.new
    richest_3.name = doc.search("div.table-chart div.table-row div.table-cell.t-name")[2].text
    richest_3.networth = doc.search("div.table-chart div.table-row div.table-cell.active.t-nw")[2].text
    richest_3.industry = doc.search("div.table-chart div.table-row div.table-cell.t-industry")[2].text
    richest_3.country = doc.search("div.table-chart div.table-row div.table-cell.t-country")[2].text
    richest_3
  end

end
