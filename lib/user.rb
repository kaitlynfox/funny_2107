class User

  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.learn(joke)
  end

  def joke_by_id(id_number)
    @jokes.each do |joke|
      if joke.id == id_number
        return joke
      end
      "This is not a valid id entered."
    end
  end

end
