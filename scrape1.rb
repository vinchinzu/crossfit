require 'nokogiri'
require 'open-uri'

#athlete = [34796,47661,163784]
#url= "http://games.crossfit.com/athlete/"

sf = File.open("data/f_d.txt").readlines.each {|x| p x}
sf.each {|x| x.gsub!(/\n/,"")}


output = File.open( "list.csv", "w" )

sf.each do |num|

d = Array.new
#list = "#{url}#{num}"

  doc = Nokogiri::HTML(open(num))
  #rows = page.css('td')
   d << num
   doc.css('#page-title').map do |x|
   puts x.content
   d << x.content
   end

doc.css('dd').map{|x| d << x.content}

doc.css('td').map{|x| d << x.content}

doc.css('div.content.clearfix h4').map{|x| d << x.content}


output << d
end
