# Represent attending a previous event.
class AttendanceHistory
  attr_reader :event_name, :year

  def initialize(event_name:, year:)
    @event_name = event_name
    @year = year
  end
end
