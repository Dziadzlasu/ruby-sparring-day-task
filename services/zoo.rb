require 'pry'
require_relative '../services/alligator'
require_relative '../services/otter'
require_relative '../services/gorilla'
require_relative '../services/penguin'
require_relative '../services/lemur'

class Zoo
  def inventory
    # binding.pry
    if @count.nil?
      'Oh no! There are no animals in our ZOO!'
    elsif @count == 1
      "There is only one animal in our ZOO! #{list_animals}. "\
      'Hope you will enjoy your visit!'
    elsif @count == 2 && @animal.all? { |param| param.is_a?(Gorilla) }
      "For now there are only #{@count} gorillas here! #{list_animals}. "\
      'Hope you will enjoy your visit!'
    elsif @count == 2
      "For now there are only #{@count} animals here! #{list_animals}. "\
      'Hope you will enjoy your visit!'
    elsif @count == 4
      "For now there are only #{@count} animals here! #{list_animals}. "\
      'Hope you will enjoy your visit!'
    elsif @count > 4 && @count < 10
      "There are #{@count} animals in our ZOO! #{list_animals}. "\
      'Hope you will enjoy your visit!'
    elsif @count == 10
      "Yayy! We have #{@count} residents now! #{list_animals}. "\
      'You need to visit us as soon as possible!'
    end
  end

  def add_animals(animal)
    @animal = animal.sort_by(&:name)
    @count = animal.length
  end

  def list_animals
    return @animal.map(&:info).join(' and ') if @count == 2
    @animal.map(&:info).join(', ')
  end
end
