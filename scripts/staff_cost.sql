use pizzeria_db;
select
ro.rota_date,
st.first_name,
st.last_name,
st.hourly_rate,
sh.start_time,
sh.end_time,
((hour(timediff(sh.end_time,sh.start_time))*60)+(minute(timediff(sh.end_time, sh.start_time))))/60 as hours_in_shift,
((hour(timediff(sh.end_time,sh.start_time))*60)+(minute(timediff(sh.end_time, sh.start_time))))/60 * st.hourly_rate as staff_cost
from rota ro
left join staff st on ro.staff_id = st.staff_id
left join shift sh on ro.shift_id = sh.shift_id