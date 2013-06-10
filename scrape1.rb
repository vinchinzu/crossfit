require 'nokogiri'
require 'open-uri'

athlete = [34796,47661,163784]
url= "http://games.crossfit.com/athlete/"

output = File.open( "data.yml", "w" )

athlete.each do |num|

list = "#{url}#{num}"
doc = Nokogiri::HTML(open(list))
#rows = page.css('td')

doc.css('#page-title').each do |x|
   puts x.content
   output << x.content
end

doc.css('dd').each{|x| output<< x.content}

doc.css('td').each{|x| output<< x.content}

doc.css('div.content.clearfix h4').each{|x| output<< x.content}


end
