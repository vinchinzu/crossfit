#//*[@id="block-search-athlete-affiliate-team-blocks-athlete-top-left"]/div/div/div/div[2]/div[1]/#table[1]/tbody/tr[2]/td[2]

require 'rubygems'
require 'nokogiri'

FIELD_NAMES = ['year']
OFILE = File.open('data-hold/data.txt', 'w')
OFILE.puts FIELD_NAMES.join("\t")


Dir.glob("data-hold/cf/*.html").each do |fname|
   meta_info = File.basename(fname, '.html')
   page = Nokogiri::HTML(open(fname))
   page.css("tr td[2]").each do |tr|

      OFILE.puts(tr.content + "\t")  
   end   
end

OFILE.close
