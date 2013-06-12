#copy all html files

require 'rubygems'
require 'nokogiri'
require 'open-uri'


Athlete_list = File.open("data/f_d.txt").readlines.each {|x| p x}
Athlete_list.each {|x| x.gsub!(/\n/,"")}

DATA_DIR = "data-hold/cf"
Dir.mkdir(DATA_DIR) unless File.exists?(DATA_DIR)

Athlete_list.each do |url|
local_fname = "#{DATA_DIR}/#{File.basename(url)}.html"

#page = Nokogiri::HTML(open(num)).read

File.open(local_fname, "w"){|file| file.write(open(url).read)}

     #File.open("#{DATA_DIR}/#{File.basename(num)}.html", 'w'){|file| file.write(page)}
 puts "\t...Success, saved to #{local_fname}"
 
    end 

