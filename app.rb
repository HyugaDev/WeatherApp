# frozen_string_literal: true

require './modules/weather_app'

# Main Application Execution
config_file = 'config.yaml'
app = WeatherApp.new(config_file)
app.run
