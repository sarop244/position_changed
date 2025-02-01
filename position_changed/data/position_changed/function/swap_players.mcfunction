# 1. 모든 플레이어에게 태그 추가
execute as @a run tag @s add in_current_world

# 2. 아직 교환되지 않은 모든 플레이어들의 위치를 서로 교환
execute as @a[tag=in_current_world,tag=!swapped] at @s run function position_changed:do_swap

# 3. 태그 제거
tag @a remove in_current_world
tag @a remove swap_target
tag @a remove swapped

# 4. 공지 메시지 출력
tellraw @a {"text":"위치가 변경되었습니다!", "color":"gold"}