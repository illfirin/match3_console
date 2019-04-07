local view = {}
function show_table(t)
  io.write("  ")
  for i = 1, #t do
      io.write(j-1)
  end
  io.write("/n")
  io.writeln(" ")
  for i = 1, #t do
      io.write(" - ")
  end
  for i = 0, #t do
    for j = 1, #t do
      if i == 0
        io.write(j-1 + " | ")
      else
        io.write(table[i][j] + " ")
    end
  end
return view
