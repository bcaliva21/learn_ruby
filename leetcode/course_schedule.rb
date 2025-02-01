# There are a total of numCourses courses you have to take, labeled from 0 to numCourses - 1. You are given an array prerequisites where prerequisites[i] = [ai, bi] indicates that you must take course bi first if you want to take course ai.

# For example, the pair [0, 1], indicates that to take course 0 you have to first take course 1.
# Return true if you can finish all courses. Otherwise, return false.

 

# Example 1:

# Input: numCourses = 2, prerequisites = [[1,0]]
# Output: true
# Explanation: There are a total of 2 courses to take. 
# To take course 1 you should have finished course 0. So it is possible.
# Example 2:

# Input: numCourses = 2, prerequisites = [[1,0],[0,1]]
# Output: false
# Explanation: There are a total of 2 courses to take. 
# To take course 1 you should have finished course 0, and to take course 0 you should also have finished course 1. So it is impossible.
#
#

# numCourse = 2
#
# graph
# prereqs [[1,0]]
# 0: []
# 1: [0]
def can_finish(num_courses, prerequisites)
  in_degree = Array.new(num_courses, 0)
  adj = Array.new(num_courses) { [] } 
  
  prerequisites.each do |course, prereq|
    adj[prereq] << course
    in_degree[course] += 1
  end

  
  queue = []
  (0...num_courses).each { |i| queue << i if in_degree[i] == 0 }
  
  processed_courses = 0
  
  until queue.empty?
    course = queue.shift
    processed_courses += 1
   
    adj[course].each do |next_course|
      in_degree[next_course] -= 1
      queue << next_course if in_degree[next_course] == 0
    end
  end
  
  processed_courses == num_courses
end

puts can_finish(2,[[1,0],[0,1]])
puts can_finish(2,[[1,0]])
