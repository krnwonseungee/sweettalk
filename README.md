##Check out the app here:
####[http://sweettalk.herokuapp.com](http://sweettalk.herokuapp.com)

![Screenshot](http://i.minus.com/iSzxgYgV8zdI3.png)

##Description:
Lorem ipsum generator for "romantic" speak. I used Mechanize in order to scrape words from around 100 different love poems through a custom rake task. 

##Challenges:
* Utilizing Mechanize to scrape words from each love poem in a streamlined manner. I resolved this using an until loop that would click on the link for a love poem, scrape the words, return back to the main page, and repeat the process for the next poem. 
* Making sure capitalization of ipsum was correct, such as correctly capitalizing words after a period, leaving words "I" and "I'm"/"I've" etc. capitalized
    * see "Possible Enhancements" for further improvements on this grammar
* Coordinating all front-end pieces (it was a great learning experience!)


##Possible Enhancements (in the works):
* Have user be able to select # paragraphs
* Improve ipsum algorithm so generated ipsum is more grammatically correct 
    * mark each word with part of speech (n, vb, adj, etc.) using Engtagger and place restrictions on how       words are arranged
* Create a gem and upload onto Rubygems.org
* Integrate Twilio API to be able to send lorem ipsums as text messages (??)



##Open Source
For any open source contributions or suggestions, please submit them on "Issues" under this repository. Feel free to create a branch and work on your own feature! For feature branches, please format as "username-feature". :)

##Contact me
Feel free to check out my [profile](https://github.com/krnwonseungee) and/or follow me. I'd love to meet you! 
