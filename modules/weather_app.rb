require 'yaml'
require 'date'
require 'json'

require_relative '../classes/city'
require_relative '../classes/weather_report'
require_relative '../data_generation/weather_data_generator'
require_relative '../interfaces/user_interface'
require_relative '../filters/weather_data_filter.rb'

class WeatherApp
  def initialize(config_file)
    @config = YAML.load_file(config_file)
    @cities = @config['cities'].map { |city_name| City.new(city_name) }
    @weather_reports = WeatherDataGenerator.generate_random_data(@cities, @config)
  end

  def run
    UserInterface.display_available_cities(@cities)
    city = UserInterface.prompt_user_for_city(@cities)
    date_range = UserInterface.prompt_user_for_date_range

    filtered_reports = WeatherDataFilter.filter_reports(@weather_reports, city, date_range)
    UserInterface.display_weather_reports(filtered_reports)
  end
end
