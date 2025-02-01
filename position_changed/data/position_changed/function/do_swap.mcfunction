# 1. 임시 마커 소환해서 내 위치 저장
summon marker ~ ~ ~ {Tags:["pos_marker"]}

# 2. 다른 플레이어 중 교환되지 않은 사람 랜덤 선택
tag @r[distance=0.1..,tag=!swapped,tag=in_current_world] add swap_target

# 3. 선택된 플레이어가 있다면 위치 교환 실행
execute if entity @e[tag=swap_target,limit=1] run tp @s @e[tag=swap_target,limit=1]
execute if entity @e[tag=swap_target,limit=1] run tp @e[tag=swap_target,limit=1] @e[type=marker,tag=pos_marker,limit=1]

# 4. 마커 제거
kill @e[type=marker,tag=pos_marker]

# 5. 교환 완료 표시
tag @s add swapped
execute if entity @e[tag=swap_target,limit=1] run tag @e[tag=swap_target,limit=1] add swapped
tag @e[tag=swap_target] remove swap_target