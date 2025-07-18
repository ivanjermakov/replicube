-- if z == 0 then
--     dist = x ^ 2 + y ^ 2
--     if dist < 11 then return 11 end
--     if dist < 21 then
--         return 6 + btoi(t == 13 or inrange(atan(x, y) / pi + 0.99, t / 6 - 2, t / 6))
--     end
-- end
--
-- d = x ^ 2 + y ^ 2
-- return 11 * btoi(z == 0 and d < 21)
--     - (d > 10 and
--         ((t == 13 or abs(6 * atan(x, y) / pi - t + 11.9) < 6) and 4 or 5)
--         or 0)

d = x ^ 2 + y ^ 2
return 11 * btoi(z == 0 and d < 21)
    - (d > 10 and
        ((t == 13 or abs(6 * atan(x, y) / pi - t + 11.9) < 6) and 4 or 5)
        or 0)
