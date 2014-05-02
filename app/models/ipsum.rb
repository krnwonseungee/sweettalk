require 'csv'

class Ipsum < ActiveRecord::Base
  # def initialize
  #   @sweet_words = Array.new
  #   CSV.foreach("./lib/sweet_words.csv") do |row|
  #     @sweet_words << row
  #   end
  # end

  def self.sort_by_most_used
    master_words_arr = Array.new
    CSV.foreach("./lib/sweet_words.csv") do |row|
      master_words_arr << row
    end
    master_words_arr.group_by do |e|
      e
    end.values.join(" ").split(" ").group_by{|x| x}.sort_by{|k, v| -v.size}.map(&:first)
  end

  def self.create_ipsum
    self.sort_by_most_used.take(300).shuffle!.join(" ").capitalize + "..."
  end


  #   @sweet_words = Array.new
  #   CSV.foreach("./lib/sweet_words.csv") do |row|
  #     @sweet_words << row
  #   end
  #   @final_ipsum = @sweet_words.shuffle!.join(" ").capitalize + "..."
  # end
end
