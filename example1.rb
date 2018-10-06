=begin
  We want to generate the following:

  {
    attendee: {
      name: 'Betty Person',
      twitter: '@bettyperson',
      favouriteLanguage: 'ruby'
    },
    previousAttendance: [2016, 2017],
    ticket: {
      bookingDate: '2018-06-01',
      paid: true
    }
  }
=end

require './attendee'
require './person'
require './attendance_history'
require './ticket'

# Set up some data
betty = Attendee.new(
  person: Person.new(id: 123,
                     name: 'Betty Person',
                     twitter: '@bettyperson',
                     favourite_language: 'ruby'),
  attendance_history: [
    AttendanceHistory.new(event_name: 'London Ruby Unconference', year: 2016),
    AttendanceHistory.new(event_name: 'London Ruby Unconference', year: 2017)
  ],
  ticket: Ticket.new(booking_date: '2018-06-01', payment_date: '2018-06-15')
)

betty.serialize
