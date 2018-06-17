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
    case
    when @count.zero? then 'Oh no! There are no animals in our ZOO!'
    when @count == 1 then 'There is only one animal in our ZOO! '
    when @count > 1 && @animal.map(&:class).uniq.length == 1
      "For now there are only #{@count} #{@animal.first.class.name.downcase}s here! "
    when @count > 1 && @count < 5 then "For now there are only #{@count} animals here! "
    when @count > 4 && @count < 10 then "There are #{@count} animals in our ZOO! "
    else
      "Yayy! We have #{@count} residents now! "
    end
  end

  def goodbye
    return 'Hope you will enjoy your visit!' if @count < 10
    'You need to visit us as soon as possible!'
  end
end
