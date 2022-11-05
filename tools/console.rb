require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new('Margaret Smith')
author2 = Author.new('Harry Macgyver')
author3 = Author.new('Tina Shwatts')
author4 = Author.new('George Johnson')


vogue = Magazine.new('Vogue Magazine', 'Fashion Culture')
vanity = Magazine.new('Vanity Fair', 'Politics, business, finance, current events, pop culture, and entertainment.')
geo = Magazine.new('National Geographic', 'The World and its Inhabitants')
food = Magazine.new('Food Network', 'American Food Culture')


new_article = Article.new(author1, vanity, 'What Elon Musk just bought Twitter?!')
new_article1 = Article.new(author2, geo, 'Deep sea diving with whales.')
new_article2 = Article.new(author3, food, 'Ten Easiest Recipes that you can afford as a bachelor.')
new_article3 = Article.new(author3, food, 'Easy snacks to keep your kids busy on haloween night.')
new_article4 = Article.new(author1, vanity, 'The new Black Panther Movie is out!')
new_article5 = Article.new(author4, vanity, 'The U.K Prime Minister, Mr. Rishi Sunak.')


### DO NOT REMOVE THIS
binding.pry

0
