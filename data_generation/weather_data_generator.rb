# Data generation class for the cities (based on the data given in the config file).

class WeatherDataGenerator
  def self.generate_random_data(cities, config)
    # Data is generated from previous two years
    date_range = (Date.today.prev_year(2)..Date.today).to_a

    date_range.flat_map do |date|
      cities.map do |city|
        WeatherReport.new(
          city,
          date,
          rand(config['temperature_range']['min']..config['temperature_range']['max']),
          rand(config['humidity_range']['min']..config['humidity_range']['max']),
          rand(config['wind_speed_range']['min']..config['wind_speed_range']['max'])
        )
      end
    end
  end
end
