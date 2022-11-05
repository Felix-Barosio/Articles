# Please copy/paste all three classes into this file to submit your solution!
class Author
    attr_accessor :name
  
    @@all = []
    
    def initialize(name)
      @name = name
      @@all << self
    
    end
  
    def articles
  
      Article.all.filter {|article| article.author == self}
  
    end
  
    def magazines
  
      self.articles.map {|article| article.magazine}.uniq
  
    end
  
    def add_article(magazine, title)
  
      Article.new(self, magazine, title)
  
    end
  
    def topic_areas
  
        self.magazines.map {|magazine| magazine.category}.uniq
  
    end
  
    def self.all
  
      @@all
      
    end
  
  
end


class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
  
    end
  
  
    def articles
  
      Article.all.filter {|article| article.magazine == self}
  
    end
  
  
    def article_titles
  
      self.articles.map {|article| article.title}
  
    end
    
  
    def contributors
  
      self.articles.map {|article| article.author}.uniq!
  
    end
  
  
    def contributing_authors
  
      magazine_authors = self.articles.map {|article| article.author}
      authors =  magazine_authors.uniq
      authors.filter {|author|  magazine_authors.count(author) > 2}
  
    end 
  
  
    def self.all
  
      @@all
  
    end
  
  
    def self.find_by_name(name)
  
      self.all.find {|magazine| magazine.name == name}
  
    end
  
  
end

class Article

    attr_reader :author, :magazine, :title

    @@all = []
 
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all

        @@all
        
    end

end
  