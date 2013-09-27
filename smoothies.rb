# Instructors for the quiz are written inline.
require 'pry'

# docs you may enjoy
# https://github.com/pry/pry
# http://www.ruby-doc.org/core-1.9.3/Hash.html
# http://ruby-doc.org/core-1.9.3/String.html
# http://ruby-doc.org/core-1.9.3/Array.html

# Every Morning I make a smoothie with the follow ingredients:
smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements)
# chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!

#Quin's original version
#assumes only key values are passed NOT a hash
def blend(ingredients)
  ingredient_list = []
  ingredient_char = []
 # binding.pry
  ingredients.each {|ingredient| ingredient_list << ingredient.split(' ')}
  ingredient_list.flatten!
  #binding.pry
  ingredient_list.each {|ingredient| ingredient_char << ingredient.split(//)}
  ingredient_char.flatten!
  ingredient_char.shuffle
end

#followed along in class
def blend2(ingredients)
  ingredient_names = ingredients.keys
  ingredient_names_string = ingredient_names.join
  ingredient_names_string_no_spaces = ingredient_names_string.delete(" ")
  letters = ingredient_names_string_no_spaces.split('')
  letters_jumble = letters.shuffle
  smoothie = letters_jumble.join
  #one line = ingredients.keys.join.delete(' ').split(''.shuffle).join
  #binding.pry

end

#puts blend(smoothie_ingredients.keys)
puts blend2(smoothie_ingredients)