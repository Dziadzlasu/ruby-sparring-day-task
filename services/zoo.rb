require_relative '../services/alligator'
require_relative '../services/otter'
require_relative '../services/gorilla'
require_relative '../services/penguin'
require_relative '../services/lemur'

class Zoo
  def inventory
    @count ||= 0
    return greeting if @count.zero?
    "#{greeting}#{list_animals}. #{goodbye}"
  end

  def add_animals(animal)
    @animal = animal.sort_by(&:name)
    @count = animal.length
  end

  def list_animals
    return @animal.map(&:info).join(' and ') if @count == 2
    @animal.map(&:info).join(', ')
  end

  def greeting
    if @count.zero?
      'Oh no! There are no animals in our ZOO!'
    elsif @count == 1
      'There is only one animal in our ZOO! '
    elsif @count == 2 && @animal.map(&:class).uniq.length == 1
      "For now there are only #{@count} #{@animal.first.class.name.downcase}s here! "
    elsif @count > 1 && @count < 5
      "For now there are only #{@count} animals here! "
    elsif @count > 4 && @count < 10
      "There are #{@count} animals in our ZOO! "
    elsif @count > 9
      "Yayy! We have #{@count} residents now! "
    end
  end

  def goodbye
    return 'Hope you will enjoy your visit!' if @count > 0 && @count < 10
    'You need to visit us as soon as possible!'
  end
end
