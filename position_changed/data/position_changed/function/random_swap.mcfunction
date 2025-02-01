# 타이머 증가
scoreboard players add #timer swap_timer 1

# 시간 확인 및 위치 교환
execute if score #timer swap_timer >= #default swap_time run function position_changed:swap_players
execute if score #timer swap_timer >= #default swap_time run scoreboard players set #timer swap_timer 0

# 카운트다운 알림
execute if score #timer swap_timer matches 1100 run tellraw @a {"text":"위치 교환까지 5초 남았습니다!", "color":"yellow"}
execute if score #timer swap_timer matches 1120 run tellraw @a {"text":"위치 교환까지 4초 남았습니다!", "color":"yellow"}
execute if score #timer swap_timer matches 1140 run tellraw @a {"text":"위치 교환까지 3초 남았습니다!", "color":"yellow"}
execute if score #timer swap_timer matches 1160 run tellraw @a {"text":"위치 교환까지 2초 남았습니다!", "color":"yellow"}
execute if score #timer swap_timer matches 1180 run tellraw @a {"text":"위치 교환까지 1초 남았습니다!", "color":"yellow"}