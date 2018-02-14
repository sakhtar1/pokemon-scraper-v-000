class Pokemon

  attr_accessor :name, :type, :db

  def self.initialize(name, type, db)
    @name = name
    @type = type
    @db = db
  end

  def self.save
    @db.execute("INSERT INTO pokemon (id, name, type) VALUES (1, 'pikachu', 'electric')",id, name, type)
  end

  def self.find
  end


end
