class GreatCircle
  def self.distance(lat1, lon1, lat2, lon2)
    radius = 6371 #Diambil dari https://en.wikipedia.org/wiki/Great-circle_distance, lihat pada bagian "Radius for spherical Earth"

    Math::acos(
      Math::sin(to_radians(lat1))*Math::sin(to_radians(lat2)) +
      Math::cos(to_radians(lat1))*Math::cos(to_radians(lat2)) *
      Math::cos(to_radians(lon2-lon1))
    ) * radius
  end

  private

  # degrees to radians
  def self.to_radians(degrees)
    degrees * Math::PI / 180.0 #Rumusnya dapet dari http://www.rapidtables.com/convert/number/degrees-to-radians.htm
  end
end