# Represent a real person
class Person
  attr_reader :id, :name, :twitter, :favourite_language

  def initialize(id:, name:, twitter:, favourite_language:)
    @id = id
    @name = name
    @twitter = twitter
    @favourite_language = favourite_language
  end
end
