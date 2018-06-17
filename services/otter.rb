class Otter
  attr_reader :name, :description

  def initialize(hsh)
    @name = hsh[:name]
    @description = hsh[:description]
  end

  def info
    @description[0] = description[0].downcase
    "#{self.class} #{name} #{description.downcase}"
  end
end
