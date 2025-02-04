def can_finish(num_courses, prerequisites)
    # prereqs graph
    # visited array - track courses needed to take

    prereqs = Array.new(num_courses) { [] }
    required = Array.new(num_courses, 0)
    taken = 0

    prerequisites.each do |course, prereq|
      prereqs[prereq] << course
      required[course] += 1
    end

    queue = []
    required.each_with_index do |requirements, idx| 
      queue << idx if requirements == 0
    end

    until queue.empty?
      node = queue.shift
      taken += 1

      while prereqs[node].length > 0
        take = prereqs[node].shift
        required[take] = required[take] - 1

        queue << take if required[take] == 0
      end
    end

    taken == num_courses
end

puts can_finish(2, [[1,0]])
puts can_finish(2, [[1,0],[0,1]])
puts can_finish(5, [[1,4],[2,4],[3,1],[3,2]])
