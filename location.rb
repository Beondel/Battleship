field = {0 => ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_"],
  1 => ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_"],
  2 => ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_"],
  3 => ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_"],
  4 => ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_"],
  5 => ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_"],
  6 => ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_"],
  7 => ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_"],
  8 => ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_"],
  9 => ["_", "_", "_", "_", "_", "_", "_", "_", "_", "_"],
  }

# Location modifies field (for now, location must take field as an argument, but it won't have to when field is an instance variable in a class)
def location(size, field)
  valid = false
  while !valid
    if rand(2) == 0 #Horizontal ship
      valid = true
      row = rand(10)
      start_col = rand(11 - size)
      for i in 0...size
        if field[row][start_col + i] != "_"
          valid = false
        end
      end
      if valid
        for i in 0...size
          field[row][start_col + i] = size.to_s
        end
      end
    else #Vertical ship
      valid = true
      col = rand(10)
      start_row = rand(11 - size)
      for i in 0...size
        if field[start_row + i][col] != "_"
          valid = false
        end
      end
      if valid
        for i in 0...size
          field[start_row + i][col] = size.to_s
        end
      end
    end
  end
end

location(2, field)
location(3, field)
location(3, field)
location(4, field)
location(5, field)

# Prints field in an easy-to-read way
for i in 0...field.length
  row = ""
  for j in 0...field[i].length
    row += field[i][j]
  end
  puts row
end