require 'csv'

class Ipsum < ActiveRecord::Base
  # def initialize
  #   @sweet_words = Array.new
  #   CSV.foreach("./lib/sweet_words.csv") do |row|
  #     @sweet_words << row
  #   end
  # end

  def self.create_ipsum #have words loaded into array beforehand?
    @sweet_words = Array.new
    CSV.foreach("./lib/sweet_words.csv") do |row|
      @sweet_words << row
    end
    @final_ipsum = @sweet_words.shuffle!.join(" ")
    @final_ipsum
  end
end

# love, chocolate, sweet, words, honey, kisses, my love for you, is, flows, only, romance, alive, forever,

# nouns
# verbs
