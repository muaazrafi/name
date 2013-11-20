require 'nokogiri'
require 'open-uri'

namespace :scrapper do
  desc "Scrape names from site 20000 names"
  task :names => :environment do
    doc = Nokogiri::HTML(open('http://www.20000-names.com/male_african_names.htm'))
    first_list = doc.xpath('//table[5]/tr[1]')
    7.times { |i| puts "***#{ first_list.inspect if i == 4  }**"  } 
  end

end
