def sorted_array_to_bst(nums)
  mid = (nums.length/2).floor
  tree = TreeNode.new(nums[mid])

  current_node = tree
  nums.each_with_index do |v,i|
    if i == mid
      next
    end
    if v < current_node.val
      if current_node.left.nil?
        current_node.left = TreeNode.new(v)
      else
        current_node = current_node.left
        while !current_node.nil? && v < current_node.val do
          if current_node.left.nil?
            break
          end
            current_node = current_node.left
        end
        if current_node.val > v
          current_node.left = TreeNode.new(v)
        else
          current_node.right = TreeNode.new(v)
        end
      end
      current_node = tree
    else
      if current_node.right.nil?
        current_node.right = TreeNode.new(v)
      else
        current_node = current_node.right
        while !current_node.nil? && v > current_node.val do
          if current_node.right.nil?
            break
          end
          current_node = current_node.right
        end
        if current_node.val > v
          current_node.left = TreeNode.new(v)
        else
          current_node.right = TreeNode.new(v)
        end
        current_node = tree
      end
    end
  end

  tree
end
