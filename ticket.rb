# Represent a ticket purchase, used to gain entry to an event.
class Ticket
  attr_reader :booking_date, :payment_date

  def initialize(booking_date:, payment_date:)
    @booking_date = booking_date
    @payment_date = payment_date
  end
end
