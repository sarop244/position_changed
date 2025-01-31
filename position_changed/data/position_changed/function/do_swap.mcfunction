# 1. 임시 마커 소환해서 내 위치 저장
summon marker ~ ~ ~ {Tags:["pos_marker"]}

# 2. 다른 플레이어 선택
tag @r[distance=0.1..,tag=!swapped] add swap_target

# 3. 위치 교환
# 3-1. 내가 상대방 위치로 이동
tp @s @a[tag=swap_target,limit=1]
# 3-2. 상대방이 마커 위치(원래 내 위치)로 이동
tp @a[tag=swap_target,limit=1] @e[type=marker,tag=pos_marker,limit=1]

# 4. 마커 제거
kill @e[type=marker,tag=pos_marker]

# 5. 교환 완료 표시
tag @s add swapped
tag @a[tag=swap_target,limit=1] add swapped
tag @a[tag=swap_target] remove swap_target