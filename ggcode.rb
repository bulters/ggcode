class GGCode
  BASE_GOOGLE_URI = "https://maps.googleapis.com/maps/api/geocode/json"
  def self.geocode(address)
    url = BASE_GOOGLE_URI + "?address=#{ CGI.escape(address) }&sensor=false"
    response = HTTParty.get(url)
    if response.code == 200 && response.parsed_response && response.parsed_response["results"].length > 0
      location = response.parsed_response["results"][0]["geometry"]["location"]
      {:latitude => location["lat"], :longitude => location["lng"] }
    else
      nil
    end
  end
end
