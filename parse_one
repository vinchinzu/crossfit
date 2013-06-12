require 'nokogiri'
require 'open-uri'
require 'csv'


Athlete_list = File.open("data/f_d.txt").readlines.each {|x| p x}
Athlete_list.each {|x| x.gsub!(/\n/,"")}


OFILE = File.open('data-hold/data.txt', 'w')

Athlete_list.each do |num|

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


csv << d

end

end
