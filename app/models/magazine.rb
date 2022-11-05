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

    self.articles.map {|article| article.author}.uniq

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
