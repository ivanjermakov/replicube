-- l = { abs(x), abs(y), abs(z) }
-- sort(l)
-- if l[2] == t then
--     return 6 + l[3] - t
-- end
-- if l[2] == 4 then
--     return 5 + l[1] / 2
-- end

l = { abs(x), abs(y), abs(z) }
sort(l)
return l[2] == t and 6 + l[3] - t or l[2] == 4 and 5 + l[1] / 2 or 0
