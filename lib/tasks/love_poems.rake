desc "Scrape love poems"
task :scrape_poems => :environment do
  require 'open-uri'
  agent = Mechanize.new
  page = agent.get("http://www.lovepoemsandquotes.com/LovePoems.html")
  $master_words_arr = Array.new

link_text = "205"
until link_text == "155"
  print link_text
  poem = agent.page.link_with(:text => link_text ).click.search(".stxt").first.text
  poem_words_arr = poem.split(" ")
  poem_words_arr.each { |word| $master_words_arr << word.downcase }
  link_text = link_text.to_i
  link_text -= 1
  link_text = link_text.to_s
  page = agent.get("http://www.lovepoemsandquotes.com/LovePoems.html")
end

# print $master_words_arr
end
