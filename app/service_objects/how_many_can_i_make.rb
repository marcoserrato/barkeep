
# Provided a cocktail and a users reagent,
# calculate how many drinks you can make.
class HowManyCanIMake

  attr_accessor :cocktail

  # Cocktail model
  def self.how_many(cocktail)
    new(cocktail)
  end

  def initialize(cocktail)
    @cocktail = cocktail
  end

  # Array[] of Reagents
  def can_i_make(user)
    cocktail.matching_reagents(user).map do |amount, reagents|
      next if amount.unitless?

      total_amount = reagents.map(&:current_volume).reduce(&:+)&.convert_to(:ml) || Measured::Volume.new(0, :ml)
      cocktail_amount = amount.required_volume.convert_to(:ml)

      total_amount.value.to_i / cocktail_amount.value.to_i
    end.compact.min
  end
end
