require 'pry'
class Lemur
  attr_reader :name, :kind, :description

  def initialize(hsh)
    @name = hsh[:name]
    @kind = hsh[:kind]
    @description = hsh[:description]
  end

  def info
    # binding.pry
    @description[0] = description[0].downcase unless @description.split.first.eql?('King')
    "#{self.class} (kind: #{kind}) #{name} - #{description}"
  end
end
