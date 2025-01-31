scoreboard objectives add swap_timer dummy "Swap Timer"
scoreboard objectives add swap_temp dummy "Temporary Scoreboard"

scoreboard objectives add swap_time dummy "Swap Time Setting"
scoreboard players set #swap_interval swap_time 1200 # 기본값 1분(1200틱)


tag @a add in_current_world