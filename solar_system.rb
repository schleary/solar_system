class SolarSystem

  attr_accessor :planets, :formation_date

  def initialize(planets, formation_date)
    @planets = planets
    @formation_date = formation_date

  end

  def find(planet_name)
    @planets.find{|planet|planet.name.downcase == planet_name}
  end

end


class Planet

  attr_accessor :zodiac, :name, :diameter, :moons, :distance, :solar_rotation_rate, :formation_date

  def initialize(planet, formation_date)
    @name = planet[:name]
    @diameter = planet[:diameter]
    @moons = planet[:moons]
    @distance = planet[:distance]
    @zodiac = planet[:zodiac]
    @solar_rotation_rate = planet[:solar_rotation_rate]
    @formation_date = formation_date

  end

  # returns the local year of the planet based on it's rotation since the
  # beginning of the solar system
  def local_year
    @formation_date / @solar_rotation_rate
  end

  def get_info(att)
    if att == :name
      @name
    elsif att == :diameter
      @diameter
    elsif att == :moons
      @moons
    elsif att == :distance
      @distance
    elsif att == :zodiac
      @zodiac
    elsif att == :solar_rotation_rate
      @solar_rotation_rate
    elsif att == :formation_date
      @formation_date
    end
  end

end

planets = [
  {
    :name => "Mercury",
    :diameter => 4878,
    :moons => 0,
    :distance => 57900000,
    :zodiac => ["Gemini", "Virgo"],
    :solar_rotation_rate => 59.0
  },
  {
    :name => "Venus",
    :diameter => 12104 ,
    :moons => 0,
    :distance => 108160000,
    :zodiac => ["Libra", "Taurus"],
    :solar_rotation_rate =>  243.0
  },
  {
    :name => "Earth",
    :diameter => 12756 ,
    :moons => 1,
    :distance => 149600000 ,
    :zodiac => [],
    :solar_rotation_rate => 1.0
  },
  {
    :name => "Mars",
    :diameter => 6794,
    :moons => 2,
    :distance => 227936640 ,
    :zodiac => ["Aries"],
    :solar_rotation_rate => 1.1
  },
  {
    :name => "Jupiter",
    :diameter => 142984 ,
    :moons => 66,
    :distance => 778369000 ,
    :zodiac => ["Sagittarius"],
    :solar_rotation_rate => 0.5
  },
  {
    :name => "Saturn",
    :diameter => 120536 ,
    :moons => 62,
    :distance => 1427034000 ,
    :zodiac => ["Capricorn"],
    :solar_rotation_rate => 0.45
  },
  {
    :name => "Uranus",
    :diameter => 51118 ,
    :moons => 27,
    :distance => 2870658186 ,
    :zodiac => ["Aquarius"],
    :solar_rotation_rate => 0.7
  },
  {
    :name => "Neptune",
    :diameter => 49532 ,
    :moons => 13,
    :distance => 4496976000 ,
    :zodiac => ["Pisces"],
    :solar_rotation_rate => 0.66
  },
  {
    :name => "Pluto",
    :diameter => 2368,
    :moons => 5,
    :distance => 4436820000 ,
    :zodiac => ["Scorpio"],
    :solar_rotation_rate => 6.0
  }
]

#main/test
planet_objects = []
formation_date = 4600000000

#creates new planet objects
planets.each do |index|
  planet = Planet.new(index, formation_date)
  planet_objects.push(planet)
end

#creates new solar system object w/ planets array
solar_system = SolarSystem.new(planet_objects, formation_date)

#Utilizes local_year method, which gets the relative age of the individual planet
solar_system.planets.each do |index|
  puts "The planet #{index.name} was formed #{solar_system.formation_date} years ago, and within the context of it's own rotation rate, it is #{index.local_year} years old."
end

print "Which planet would you like to know about? ("
planet_objects.each do |index|
  print " #{index.name} "
end
puts ")"
choice = gets.chomp.downcase


puts "What would you like to know about #{choice}? (select from: diameter, moons, distance, zodiac, solar rotation rate)"
att = gets.chomp.to_sym

puts "The #{att} of the planet #{choice} is #{solar_system.find(choice).get_info(att)}"
