# Class to store weather reports

class WeatherReport
  attr_reader :city, :date, :temperature, :humidity, :wind_speed

  def initialize(city, date, temperature, humidity, wind_speed)
    @city = city
    @date = date
    @temperature = temperature
    @humidity = humidity
    @wind_speed = wind_speed
  end

  def to_hash
    {
      city: @city.name,
      date: @date.to_s,
      temperature: { value: @temperature, unit: '°C' },
      humidity: { value: @humidity, unit: 'g/m³' },
      wind_speed: { value: @wind_speed, unit: 'm/s' }
    }
  end
end
