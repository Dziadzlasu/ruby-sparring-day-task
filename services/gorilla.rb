class Gorilla
  attr_reader :name, :origin, :description

  def initialize(hsh)
    @name = hsh[:name]
    @origin = hsh[:origin]
    @description = hsh[:description]
  end

  def info
    @description[0] = description[0].downcase
    "#{self.class} #{name} from #{origin} #{description}"
  end
end
