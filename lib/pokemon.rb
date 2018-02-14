class Pokemon

  attr_accessor :id,:name, :type, :db

  @@all = []
  def initialize(pokemon)
    @id = pokemon[id]
    @name = pokemon[name]
    @type = pokemon[type]
    @db = pokemon[db]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(id, type, db)
    @db.execute("INSERT INTO pokemon (id, name, type) VALUES ( '?','?','?')",id, name, type)
  end

  def self.find
  end


end
