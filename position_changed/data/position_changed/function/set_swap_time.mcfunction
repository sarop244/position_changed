# 시간 설정 함수
execute store result score #swap_interval swap_time run data get storage position_changed time 
tellraw @s [{"text":"위치 교환 주기를 "}, {"score":{"name":"#swap_interval","objective":"swap_time"}}, {"text":"틱으로 설정했습니다."}]