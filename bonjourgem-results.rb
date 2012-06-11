#!/usr/bin/env ruby
# -*- encoding : utf-8 -*-
require 'nokogiri'
require 'open-uri'

def already_covered?(gem)
  doc = Nokogiri::HTML(open("https://www.google.fr/search?q=#{gem}+site%3Abonjourgem.com"))
  return !doc.css('h3.r a').empty?
end

unless ARGV.length == 1
  puts "Usage : bonjourgem-results.rb <file|name>"
  puts "file is a list of gems separated by \\n"
  exit
end

arg = ARGV[0]
if (File.exists?(arg))
  f = File.open(arg, 'r')
  f.each_line do |line|
    line.strip!
    next if line.empty?
    puts "#{line} : #{already_covered?(line).inspect}"
  end
else
  puts already_covered?(arg).inspect
end

