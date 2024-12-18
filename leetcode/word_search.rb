def exist(board, word)
  visited = Array.new(board.length) { Array.new(board[0].length, false) }

  (0...board.length).each do |r|
    (0...board[0].length).each do |c|
      if helper(board, word, visited, 0, r, c)
        return true
      end
    end
  end
  false
end

def helper(board, word, visited, index, row, col)
  return true if index == word.length

  return false if row < 0 || 
                  col < 0 || 
                  visited[row][col] || 
                  row > board.length - 1 || 
                  col > board[0].length - 1 || 
                  board[row][col] != word[index]

  visited[row][col] = true

  result = helper(board, word, visited, index+1, row, col+1) ||
           helper(board, word, visited, index+1, row+1, col) ||
           helper(board, word, visited, index+1, row, col-1) ||
           helper(board, word, visited, index+1, row-1, col) ||

  visited[row][col] = false
  result
end

print exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]],"ABCCED")
# Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
#
# Input: board = [["A","B","C","E"],
#                 ["S","F","C","S"],
#                 ["A","D","E","E"]], word = "ABCCED"
# Output: true
