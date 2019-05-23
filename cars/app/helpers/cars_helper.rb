module CarsHelper

  def car_image(car)

    if car.image.blank?
      image_tag("car_placeholder.png", class:"img-fluid d-block")
    else
      image_tag(car.image, class:"img-fluid d-block")
    end

  end

end
