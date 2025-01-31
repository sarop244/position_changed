# 타이머 증가
scoreboard players add #timer swap_timer 1

# 동적 시간 간격으로 위치 교환
execute if score #timer swap_timer >= #swap_interval swap_time run function position_changed:swap_players
execute if score #timer swap_timer >= #swap_interval swap_time run scoreboard players set #timer swap_timer 0

# 5초 전부터 타이머 알림 (동적으로 계산)
execute store result score #countdown swap_temp run scoreboard players operation #temp swap_temp = #swap_interval swap_time - 200
execute if score #timer swap_timer = #countdown swap_temp run tellraw @a {"text":"위치 교환까지 5초 남았습니다!", "color":"yellow"}
execute store result score #countdown swap_temp run scoreboard players operation #temp swap_temp = #swap_interval swap_time - 180
execute if score #timer swap_timer = #countdown swap_temp run tellraw @a {"text":"위치 교환까지 4초 남았습니다!", "color":"yellow"}
execute store result score #countdown swap_temp run scoreboard players operation #temp swap_temp = #swap_interval swap_time - 160
execute if score #timer swap_timer = #countdown swap_temp run tellraw @a {"text":"위치 교환까지 3초 남았습니다!", "color":"yellow"}
execute store result score #countdown swap_temp run scoreboard players operation #temp swap_temp = #swap_interval swap_time - 140
execute if score #timer swap_timer = #countdown swap_temp run tellraw @a {"text":"위치 교환까지 2초 남았습니다!", "color":"yellow"}
execute store result score #countdown swap_temp run scoreboard players operation #temp swap_temp = #swap_interval swap_time - 120
execute if score #timer swap_timer = #countdown swap_temp run tellraw @a {"text":"위치 교환까지 1초 남았습니다!", "color":"yellow"}