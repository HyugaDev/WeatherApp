# Filteration class to filter data based on the city and date range

class WeatherDataFilter
  def self.filter_reports(reports, city, date_range)
    reports.select { |report| report.city == city && date_range.cover?(report.date) }
  end
end
