def clock_hands(time)

    # every minute the minute hand moves 360 / 60 degrees
    # every hour the hour hand moves 360 / 12 degrees
    # every minute the hour hand moves 360 / 12 / 60 degrees
    hours, minutes = time.split(":").map {|t| t.to_i}
    hour_start_position = hours * 30 + minutes * 0.5
    minute_start_position = minutes * 30
    angle_between = (hour_start_position - minute_start_position).abs
    angle_between = angle_between <= 180 ? angle_between : angle_between % 180
end


puts clock_hands("9:00") == 90
puts clock_hands("6:00") == 180
puts clock_hands("12:00") == 0
puts clock_hands("1:00") == 30
puts clock_hands("3:00") == 90
puts clock_hands("4:00") == 120
puts clock_hands("3:30") == 75












