#Create a Planet class with a name attribute
#Create a SolarSystem class that has an attribute "planets" that has 0-??? Planets
#Each element with the planets Array should be a Planet object
#Get creative! Give planets diameters, mass, moons.. whatever! Allow these attributes
#to be set using a hash in initialize.


class SolarSystem

  attr_accessor :planets, :zodiac, :name, :diameter, :moons, :distance

  def initialize(planets)
    @name = planets[:name]
    @diameter = planets[:diameter]
    @moons = planets[:moons]
    @distance = planets[:diameter]
    @zodiac = planets[:zodiac]
  end

end

planets = [
  {
    :name => "Mercury",
    :diameter => 4878,
    :moons => 0,
    :distance => 57900000,
    :zodiac => ["Gemini", "Virgo"]
  },
  {
    :name => "Venus",
    :diameter => 12104 ,
    :moons => 0,
    :distance => 108160000,
    :zodiac => ["Libra", "Taurus"]
  },
  {
    :name => "Earth",
    :diameter => 12756 ,
    :moons => 1,
    :distance => 149600000 ,
    :zodiac => []
  },
  {
    :name => "Mars",
    :diameter => 6794,
    :moons => 2,
    :distance => 227936640 ,
    :zodiac => ["Aries"]
  },
  {
    :name => "Jupiter",
    :diameter => 142984 ,
    :moons => 66,
    :distance => 778369000 ,
    :zodiac => ["Sagittarius"]
  },
  {
    :name => "Saturn",
    :diameter => 120536 ,
    :moons => 62,
    :distance => 1427034000 ,
    :zodiac => ["Capricorn"]
  },
  {
    :name => "Uranus",
    :diameter => 51118 ,
    :moons => 27,
    :distance => 2870658186 ,
    :zodiac => ["Aquarius"]
  },
  {
    :name => "Neptune",
    :diameter => 49532 ,
    :moons => 13,
    :distance => 4496976000 ,
    :zodiac => ["Pisces"]
  },
  {
    :name => "Pluto",
    :diameter => "Justice",
    :moons => 5,
    :distance => 4436820000 ,
    :zodiac => ["Scorpio"]
  }
]

#main/test
planets.each do |index|
  planet = SolarSystem.new(index)
  puts "#{planet.name}: diameter: #{planet.diameter}, moons: #{planet.moons}, distance: #{planet.distance}, zodiacs: #{planet.zodiac}"
end
