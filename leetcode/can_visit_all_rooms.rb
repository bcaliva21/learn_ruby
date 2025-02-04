def can_visit_all_rooms(rooms)
  visited = Array.new(rooms.length, false)

  keys = [0]
  until keys.empty?
    key = keys.shift
    visited[key] = true

    rooms[key].each do |k|
      unless visited[k]
        keys.push(k)
      end
    end
  end

  visited.each do |open|
    return false unless open
  end

  true
end

puts can_visit_all_rooms([[1,3],[3,0,1],[2],[0]])
puts " "
puts can_visit_all_rooms([[1],[2],[3],[]])
