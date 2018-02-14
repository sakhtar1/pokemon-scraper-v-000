class Pokemon

  attr_accessor :id,:name, :type, :db

  @@all = []
  def initialize(pokemon)
    @id = pokemon[id]
    @name = pokemon[name]
    @type = pokemon[type]
    @db = pokemon[db]
    @@all << self
    pokemon
  end

  def self.all
    @@all
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES ( ?,?)",name, type)
  end

  def self.find(id,db)
    name = db.execute("Select name From Pokemon Where id = #{id}").flatten[0]
    type = db.execute("Select type From pokemon Where id = #{id}").flatten[0]
    pokemon = {id: id, name: name, type: type, db: db}
    newpoke = Pokemon.new(pokemon)
  end


end
