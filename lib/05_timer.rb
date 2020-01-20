def time_string(nb_to_time)
    Time.at(nb_to_time).utc.strftime("%H:%M:%S")
end
