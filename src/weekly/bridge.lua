-- function is_bridge_sect(ox, oy, oz)
--     lx = x - ox
--     ly = y - oy
--     lz = z - oz
--     alx = abs(lx)
--     alz = abs(lz)
--     bounds = alx < 2 and alz < 3 and ly >= 0 and ly < 4
--     if bounds then
--         if ly == 0 then return true end
--         if ly == 3 and alz == 2 then return true end
--         if lx == 0 and alz == 2 then return true end
--     end
--     return false
-- end
--
-- is_shore = abs(x + sin(z / 2) * 2) > 3
-- if y == -7 then
--     return is_shore and 16 or 13
-- end
-- if y == -6 and is_shore then
--     return 11
-- end
-- if abs(x) < 7 then
--     if is_bridge_sect(0, -3, 0) or
--         is_bridge_sect(3, -4, 0) or
--         is_bridge_sect(6, -5, 0) or
--         is_bridge_sect(-3, -4, 0) or
--         is_bridge_sect(-6, -5, 0)
--     then
--         return 15
--     end
-- end
-- ax = abs(x)
-- az = abs(z)
-- if y == -5 then
--     if (az - ax == 1 and x * z > 0 and (ax == 3 or ax == 6)) or
--         (x * z < 0 and ax == 6 and az == 5)
--     then
--         return 5
--     end
-- end

-- ax = abs(x)
-- az = abs(z)
-- function b(ox, oy)
--     lx = ax - ox
--     return abs(lx) < 2 and az < 3 and oy >= -y and oy < 4 - y
--         and (oy == -y or az == 2 and (oy == 3 - y or lx == 0))
-- end
--
-- return y < -5 and (abs(x + sin(z / 2) * 2) > 3 and (y == -6 and 11 or 16) or y == -7 and 13 or 0)
--     or ax < 7 and (b(0, 3) or b(3, 4) or b(6, 5)) and 15
--     or y == -5 and (az - ax == 1 and x * z > 0 and (ax == 3 or ax == 6)
--         or x * z < 0 and ax == 6 and az == 5) and 5
--     or 0

is_shore = abs(x + sin(z / 2) * 2) > 3
ax = abs(x)
az = abs(z)
function b(ox, oy)
    lx = ax - ox
    return abs(lx) < 2 and az < 3 and oy >= -y and oy < 4 - y
        and (oy == -y or az == 2 and (oy == 3 - y or lx == 0))
end

return y == -7 and (is_shore and 16 or 13)
    or y == -6 and is_shore and 11
    or ax < 7 and (b(0, 3) or b(3, 4) or b(6, 5)) and 15
    or y == -5 and (az - ax == 1 and x * z > 0 and (ax == 3 or ax == 6)
        or x * z < 0 and ax == 6 and az == 5) and 5
    or 0

