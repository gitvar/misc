require 'date'

TIME_FORMAT = "%H:%M:%S"

current_date_and_time = DateTime.now
date = current_date_and_time.to_date
time = current_date_and_time.to_time

puts date
puts time.strftime TIME_FORMAT

two_hours_later = time + (2 * 60 * 60)

puts two_hours_later.strftime TIME_FORMAT
puts date.next_day
puts date.next_month
