class BratuWorldRichest::Richest
  attr_accessor :name, :networth, :industry, :country

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.by_industry(industry)
    self.all.select do |rich|
      rich.industry.downcase == industry.downcase
    end  
  end
end
