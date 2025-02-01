# 타이머 증가
scoreboard players add #timer swap_timer 1

# 시간 확인 및 위치 교환
execute if score #timer swap_timer >= #default swap_time run function position_changed:swap_players
execute if score #timer swap_timer >= #default swap_time run scoreboard players set #timer swap_timer 0

# 남은 시간 계산 (5초 = 100틱)
scoreboard players operation #remaining swap_temp = #default swap_time
scoreboard players operation #remaining swap_temp -= #timer swap_timer

# 카운트다운 알림
execute if score #remaining swap_temp matches 100 run tellraw @a {"text":"위치 교환까지 5초 남았습니다!", "color":"yellow"}
execute if score #remaining swap_temp matches 80 run tellraw @a {"text":"위치 교환까지 4초 남았습니다!", "color":"yellow"}
execute if score #remaining swap_temp matches 60 run tellraw @a {"text":"위치 교환까지 3초 남았습니다!", "color":"yellow"}
execute if score #remaining swap_temp matches 40 run tellraw @a {"text":"위치 교환까지 2초 남았습니다!", "color":"yellow"}
execute if score #remaining swap_temp matches 20 run tellraw @a {"text":"위치 교환까지 1초 남았습니다!", "color":"yellow"}