module RecipesHelper
  def show_recipe_image(recipe)
    if recipe.image.attached?
      link_to image_tag(recipe.image.variant(resize: "300x300"), class: "img-thumbnail"), recipe_path(recipe)
    else
      image_tag "img_warning.png", class: "img-thumbnail"
    end
  end

  def show_recipe_small_image(recipe)
    if recipe&.image&.attached?
      image_tag recipe.image.variant(resize: "50x50"), class: "img-thumbnail"
    else
      image_tag "img_warning.png", class: "img-thumbnail", width: 50
    end
  end
end
