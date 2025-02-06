def find_order(num_courses, prerequisites)
  taken = Array.new(num_courses, 0)
  requirements = Array.new(num_courses) { [] }

  prerequisites.each do |course, prereq|
    requirements[prereq] << course
    taken[course] += 1
  end

  queue = []
  order = []

  taken.each_with_index do |reqs,course|
    queue << course if reqs == 0
  end

  until queue.empty?
    course = queue.shift
    order << course unless order.include?(course)

    requirements[course].each do |next_course|
      taken[next_course] -= 1
      queue << next_course if taken[course] == 0
    end
  end

  order
end

print find_order(2, [[1,0]])
puts " "
print find_order(4, [[1,0],[2,0],[3,1],[3,2]])
print find_order(3, [[0,1],[0,2],[1,2]])

# 0: [1]
# 1: []

# taken = [0,1]
