# Represents all information about an individual attendee.
class Attendee
  attr_reader :person, :attendance_history, :ticket

  def initialize(person:, attendance_history:, ticket:)
    @person = person
    @attendance_history = attendance_history
    @ticket = ticket
  end

  def serialize
    'TODO: implement this'
  end
end
