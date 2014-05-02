desc "Scrape love poems"
task :scrape_poems => :environment do
  require 'open-uri'
  require 'csv'
  agent = Mechanize.new
  page = agent.get("http://www.lovepoemsandquotes.com/LovePoems.html")

link_text = "205"
until link_text == "100"
  print link_text
  poem = agent.page.link_with(:text => link_text ).click.search(".stxt").first.text
  poem_words_arr = poem.split(" ")
  CSV.open("./lib/sweet_words.csv", "a+") do |csv|
    poem_words_arr.each do |word|
      csv << [ word.downcase ]
    end
  end
  link_text = link_text.to_i
  link_text -= 1
  link_text = link_text.to_s
  page = agent.get("http://www.lovepoemsandquotes.com/LovePoems.html")
end

# print $master_words_arr
end
