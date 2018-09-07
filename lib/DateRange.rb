require 'date'
# Responsability - Handle date methods

class DateRange
  attr_reader :start_date, :end_date

  # Maybe change initalize so arguments are in a hash/order doesn't matter?
  def initialize(start_date_one, end_date_one)
    @start_date = start_date_one
    if start_date_one.class != Date
      raise ArgumentError, 'Please enter a valid date (yyyy, mm, dd)'
    end
    @end_date = end_date_one
    if end_date_one.class != Date
      raise ArgumentError, 'Please enter a valid date (yyyy, mm, dd)'
    end
  end

  def date_within_range?(date)
    return (@start_date .. @end_date).cover?(date)
  end

  def number_of_days
    return (@end_date - @start_date).to_i
  end

end
