# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
  scratch = matrix.map(&:clone)
  scratch.each_with_index do |row,row_index|
    row.each_with_index do |col_value,col_index|
      if col_value == 0
        matrix[row_index].each_with_index do |_,i|
          matrix[row_index][i] = 0
        end
        row_index_ptr = row_index - 1
        while row_index_ptr > -1
          matrix[row_index_ptr][col_index] = 0
          row_index_ptr -= 1
        end
        row_index_ptr = row_index + 1
        while row_index_ptr < matrix.size
          matrix[row_index_ptr][col_index] = 0
          row_index_ptr += 1
        end
      end
    end
  end

  matrix
end

test1 = [[1,1,1],[1,0,1],[1,1,1]]

print set_zeroes test1

