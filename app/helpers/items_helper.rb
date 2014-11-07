module ItemsHelper

  def ice_cream_flavors
    Ingredient.where(category:'ice cream')
  end

  def milk_choices
    Ingredient.where(category: 'milk')
  end

  def sodas
    Ingredient.where(category: 'soda')
  end


end
