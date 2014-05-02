require 'csv'

class Ipsum < ActiveRecord::Base

  def self.sort_by_most_used
    master_words_arr = Array.new
    CSV.foreach("./lib/sweet_words.csv") do |row|
      master_words_arr << row
    end
    unspellchecked = master_words_arr.group_by do |e|
      e
    end.values.join(" ").split(" ").group_by{|x| x}.sort_by{|k, v| -v.size}.map(&:first).take(300).shuffle
  end

  def self.cap_after_period(arr)
    arr.each_with_index.map do |word, i|
      ( arr[i - 1][-1] == "." || i == 0 ) ? word.capitalize : word
    end
  end

  def self.create_ipsum
    self.cap_after_period(self.sort_by_most_used).join(" ") + "..."
  end
end
