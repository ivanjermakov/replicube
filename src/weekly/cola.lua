d = x ^ 2 + z ^ 2
ax = abs(x)
ay = abs(y)
az = abs(z)
sz = sign(z)
minzx = min(ax, az)
maxzx = max(ax, az)
return
    y == 5 and ax < 2 and (z == 0 and 2 or abs(z - 1) < 2 and 0) or
    ay < 5 and d < 14 and ((
        ay == 2 and minzx == 0 and maxzx == 2 or
        ay % 4 == 0 and (maxzx == 0 or minzx == 2 and maxzx == 2)
    ) and 4 or 15) or
    (ay == 5 and d < 14) or ay == 6 and d > 8 and d < 14 and 1
    or y == 6 and x == 0 and z < 0 and z > -3 and 2
    or ay < 6 and d > 13 and d < 25 and
    (az == 4 and abs(sin(y) - sz * (x - sz)) < 0.5 and 1 or 7)
    or 0
