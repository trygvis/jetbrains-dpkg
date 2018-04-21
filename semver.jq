def parse:
   capture("(?<x>[0-9]+)\\.(?<y>[0-9]+)\\.?(?<z>[0-9]+)?") |
   del(.[]|select(. == null)) |
   map_values(tonumber)
;
