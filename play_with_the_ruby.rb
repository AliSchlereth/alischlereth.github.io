def insert(position, node)
  return "This is not a valid request." if node == nil || position > count
  current_node = head
  current_node = find_position(position, current_node)
  attach_new_node(current_node, node)
  node
end

def attach_new_node(current_node, node)
  node_to_insert           = Node.new(node)
  node_to_insert.next_node = current_node.next_node
  current_node.next_node   = node_to_insert
end

def find_position(position, current_node)
  if position == 0
    prepend
  else
    slide_along_nodes(position,current_node)
  end
end

def slide_along_nodes(position, current_node)
  (position - 1).times do
    current_node = current_node.next_node
  end
  current_node
end
