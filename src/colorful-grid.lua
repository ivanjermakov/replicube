-- if x == 0 or y == 0 or z == 0 then
--     return 1
-- end
-- if x > 1 then
--     if y > 1 and z > 1 then
--         return 10
--     end
--     if y < -1 and z < -1 then
--         return 13
--     end
-- end
-- if x < -1 then
--     if y < -1 and z > 1 then
--         return 9
--     end
--     if y > 1 and z < -1 then
--         return 7
--     end
-- end

return
    x * y * z == 0 and 1 or
    x > 1 and y > 1 and z > 1 and 10 or
    x < -1 and y < -1 and z > 1 and 9 or
    x < -1 and y > 1 and z < -1 and 7 or
    x > 1 and y < -1 and z < -1 and 13 or 0
