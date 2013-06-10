require 'nokogiri'
require 'open-uri'



ATHLETE_NUM = 11435
BASE_URL = "http://games.crossfit.com/athlete/"

LIST_URL = "#{BASE_URL}#{ATHLETE_NUM}"
doc = Nokogiri::HTML(open(LIST_URL))
#rows = page.css('td')

doc.css('td').each do |x|
puts x.content
end
