#!/usr/bin/ruby1.9
# -*- coding: utf-8 -*-
require 'rubygems'
require './lib/virastar_improved'
include VirastarStingExtensions
include Virastar
#$KCODE='UTF8'
str=" خوب تر "
str2=" می کنم "
str3=" زن ها "
#puts str.gsub!(/\s+(می)\s+/,'\1'+"\u200C")
#puts str.inspect
#下のコードは1.9でのみ有効
if RUBY_VERSION.to_f == 1.9
  puts str.each_codepoint { |cp| $stdout << "U+" << cp.to_s(16) << " " }
  puts str2.each_codepoint { |cp| $stdout << "U+" << cp.to_s(16) << " " }
end
newline=str.persian_cleanup
newline2=str2.persian_cleanup
newline3=str3.persian_cleanup
if RUBY_VERSION.to_f == 1.9
  puts newline.each_codepoint { |cp| $stdout << "U+" << cp.to_s(16) << " " }
  puts newline2.each_codepoint { |cp| $stdout << "U+" << cp.to_s(16) << " " }
  puts newline3.each_codepoint { |cp| $stdout << "U+" << cp.to_s(16) << " " }
end

