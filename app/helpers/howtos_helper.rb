module HowtosHelper
  def show_howto_image(howto)
    if howto.image.attached?
      image_tag howto.image.variant(resize: "300x300"), class: "img-thumbnail"
    else
      image_tag "img_warning.png", class: "img-thumbnail"
    end
  end

  def show_howto_small_image(howto)
    if howto&.image&.attached?
      image_tag howto.image.variant(resize: "50x50"), class: "img-thumbnail"
    else
      image_tag "img_warning.png", class: "img-thumbnail", width: 50
    end
  end
end
