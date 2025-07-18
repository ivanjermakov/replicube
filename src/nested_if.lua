-- if y > 0 then
--     if x > 0 then
--         return 11
--     else
--         return 8
--     end
-- else
--     if z > 0 then
--         return 13
--     else
--         return 7
--     end
-- end

return y > 0
    and (x > 0 and 11 or 8)
    or z > 0 and 13 or 7
