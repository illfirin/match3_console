local model = {}
crystals = {"A", "B", "C", "D", "E", "F"}
local N = 10
local M = 10
local table = {}
local matches = {}

local function isTranslationExist()
  local t1 = table.shallow_copy(table)
  local count = 0
  for i = 1, N-2 do
    for j = 1, M-2 do
      move(t1, i, j, "r")

      while t1[i][j] == t1[i+1][j] and i ~= N-2 do
        if count >= 3
          return true
        else
          count = count + 1
          local i = i + 1
      end
      move
      while t1[i][j] == t1[i-1][j] and i ~= 1 do
        if count >= 3
          return true
        else
          count = count + 1
          local i = i - 1
      end
end

function valid(data, array)
  local valid = {}
  for i = 1, #array do
    valid[array[i]] = true
  end
  if valid[data] then
    return false
  else
    return true
  end
end

function model:init()
  for i = 0, N-1 do
    table[i] = {}
    for j = 0, M-1 do
      table[i][j] = crystals[math.random(#crystals)]
    end
  end
end

function model:move(table, x, y, to)
  if to == "r" then
    table[x][y], table[x+1][y] = table[x+1][y], table[x][y]
  elseif to == "l" then
    table[x][y], table[x-1][y] = table[x-1][y], table[x][y]
  elseif to == "u" then
    table[x][y], table[x][y-1] = table[x][y-1], table[x][y]
  elseif to == "d" then
    table[x][y], table[x][y+1] = table[x][y+1], table[x][y]
  else
end

function table.shallow_copy(t)
  local t2 = {}
  for k,v in pairs(t) do
    t2[k] = v
  end
  return t2
end

function matchesExist()
  for i = 1, N do
    local c = 1
    local count = 0

    while table[i][c] == table[i][c+1] and c ~= N+1
      if count >= 3 then
        return
      else
        count = count + 1
        c = c + 1
      end
    end
    local c = 1

    while table[c][i] == table[c+1][i] and c ~= N+1
      if count >= 3 then
        return
      else
        count = count + 1
        c = c+1
      end
    end
  end
end

function model:deleteUsualMatches(x,y)
  -- moving right side of table's above matches
  local i = x
  local j = y
  while table[i][j] == table[i+1][j] and i ~= #table+1 do
      local k = j
      while k ~= 0 do
        if k ~= 1 then
          table[i][k-1] = table[i][k]
          k = k - 1
        else
          table[i][k] = crystals[math.random(#crystals)]
          k = k-1
        end
      end
    i = i+1
  end
  -- moving left side of table's above matches
  local i = x
  local j = y
  while table[i][j] == table[i-1][j] and i ~= 1 do
      local k = j
      while k ~= 0 do
        if k ~= 1 then
          table[i][k-1] = table[i][k]
          k = k - 1
        else
          table[i][k] = crystals[math.random(#crystals)]
          k = k - 1
        end
      end
    i = i - 1
  end
  -- create new elements in the row
  if y ~= 1
    local i = x
    local j = y-1
    while j ~= 0 do
      table[i][j] = crystals[math.random(#crystals)]
      j = j+1
    end

end

function model:deleteMatches(x, y, elemetType)
  if valid(elementType, crystals) then

  else

  end
end

function model:mix()
  while ~isTranslationExist do
    if matchesExist() then
      mix()
    else
      for i=0, N-1 do
        for j= 0, M-1 do
          table[math.random(N-1)][math.random(M-1)], table[math.random(M-1)][math.random(N-1)] = table[math.random(M-1)][math.random(N-1)], table[math.random(N-1)][math.random(M-1)]
        end
      end
    end
end

function model:tick()

end

return model
