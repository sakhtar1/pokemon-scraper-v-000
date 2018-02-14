class Pokemon

  attr_accessor :id, :name, :type, :db

  def self.initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save
    @db.execute("INSERT INTO pokemon (id, name, type) VALUES ( '?','?','?')",id, name, type)
  end

  def self.find
  end


end
