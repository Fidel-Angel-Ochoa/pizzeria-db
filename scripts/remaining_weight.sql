use pizzeria_db;
select 
	s2.ing_id,
    s2.ing_name,
    s2.ordered_weight,
    ing.ing_weight,
    inv.quantity,
    ing.ing_weight*inv.quantity as total_inv_weight,
    (ing.ing_weight * inv.quantity)-s2.ordered_weight as remaining_weight
FROM
(select 
	ing_id,
	ing_name,
    sum(ordered_weight) as ordered_weight
from
	stock1
    group by ing_name, ing_id) s2

left join inventory inv on inv.ing_id = s2.ing_id
left join ingredient ing on ing.ing_id = s2.ing_id