def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array_of_names)
  badge_list = []
  array_of_names.each do |name|
    badge_list << badge_maker(name)
  end
  badge_list
end

def assign_rooms(list_of_names)
  room_list = []
  list_of_names.each_with_index do |name, index|
    room_list << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
  room_list
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |room_assignment|
    puts room_assignment
  end
end