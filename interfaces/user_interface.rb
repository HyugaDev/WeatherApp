require 'colorize'

# User interface class for interacting with the user on console

class UserInterface
  def self.display_available_cities(cities)
    puts 'Available Cities:'.yellow
    cities.each { |city| puts "- #{city.name}" }
    puts '-' * 20
  end

  def self.prompt_user_for_city(cities)
    print 'Enter the city: '.green
    user_input = gets.chomp.downcase
    puts user_input
    cities.find { |city| city.name.downcase == user_input } || (puts 'Invalid city!'.red; prompt_user_for_city(cities))
  end

  def self.prompt_user_for_date_range
    print 'Enter two dates for the range (YYYY-MM-DD YYYY-MM-DD): '.green
    date_inputs = gets.chomp.split

    start_date, end_date = date_inputs.map { |date| Date.parse(date) }.minmax

    unless start_date <= end_date
      puts 'Invalid date range! Start date should be before or equal to end date.'.red
      return prompt_user_for_date_range
    end

    start_date..end_date
  rescue ArgumentError
    puts 'Invalid date format! Please use YYYY-MM-DD.'.red
    prompt_user_for_date_range
  end

  def self.display_weather_reports(reports)
    puts 'Weather Reports:'.blue
    puts JSON.pretty_generate(reports.map(&:to_hash))
  end
end
