class Pokemon

  @@all = []
  def self.initialize(name,type,db)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.save
    @db.execute("INSERT INTO pokemon (id, name, type) VALUES (1, 'pikachu', 'electric')",id, name, type)
  end

  def self.find


end
