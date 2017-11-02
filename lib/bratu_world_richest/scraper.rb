class BratuWorldRichest::Scraper



  def self.scrape_bloomberg
    doc = Nokogiri::HTML(open("https://www.bloomberg.com/billionaires/"))
    doc.css('div.table-chart div.table-row').each do |top|

      richest = BratuWorldRichest::Richest.new
      richest.name = top.search("div.table-cell.t-name").text
      richest.networth = top.search("div.table-cell.active.t-nw").text
      richest.industry = top.search("div.table-cell.t-industry").text
      richest.country = top.search("div.table-cell.t-country").text
    end
  end

  # def scrape_bloomberg_2
  #   richest_2 = BratuWorldRichest::Richest.new
  #   richest_2.name = doc.search("div.table-chart div.table-row div.table-cell.t-name")[1].text
  #   richest_2.networth = doc.search("div.table-chart div.table-row div.table-cell.active.t-nw")[1].text
  #   richest_2.industry = doc.search("div.table-chart div.table-row div.table-cell.t-industry")[1].text
  #   richest_2.country = doc.search("div.table-chart div.table-row div.table-cell.t-country")[1].text
  #   richest_2
  # end
  #
  # def scrape_bloomberg_3
  #   richest_3 = BratuWorldRichest::Richest.new
  #   richest_3.name = doc.search("div.table-chart div.table-row div.table-cell.t-name")[2].text
  #   richest_3.networth = doc.search("div.table-chart div.table-row div.table-cell.active.t-nw")[2].text
  #   richest_3.industry = doc.search("div.table-chart div.table-row div.table-cell.t-industry")[2].text
  #   richest_3.country = doc.search("div.table-chart div.table-row div.table-cell.t-country")[2].text
  #   richest_3
  # end

end
