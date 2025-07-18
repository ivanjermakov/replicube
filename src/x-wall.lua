if z == 0 then return 3 end
color = 0
if z < 0 then color = 1 end
if x == -y then
    return 9 + color
end
if x == y then
    return 5 + color
end
