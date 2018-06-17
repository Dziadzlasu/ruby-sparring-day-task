class Lemur
  attr_reader :name, :kind, :description

  def initialize(hsh)
    @name = hsh[:name]
    @kind = hsh[:kind]
    @description = hsh[:description]
  end

  def info
    @description[0] = description[0].downcase
    "#{self.class} (kind: #{kind}) #{name} - #{description}"
  end
end
