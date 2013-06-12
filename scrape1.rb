require 'nokogiri'
require 'open-uri'
require 'csv'


sf = File.open("data/f_d.txt").readlines.each {|x| p x}
sf.each {|x| x.gsub!(/\n/,"")}


CSV.open("db.csv","w") do |csv|

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


csv << d

end

end
