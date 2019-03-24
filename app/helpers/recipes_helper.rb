module RecipesHelper
  def show_recipe_image(recipe)
    if recipe.image.attached?
      image_tag recipe.image.variant(resize: "300x300"), class: "img-thumbnail"
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

  def calusel1
    "https://i.pinimg.com/originals/1f/aa/c3/1faac3b711a8366d4c42bc2d2dbf79cd.png"
  end
  def w
    @carouselslide2
    @carouselslide3
  end

end
