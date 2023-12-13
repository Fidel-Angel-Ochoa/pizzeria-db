use pizzeria_db;
SELECT 
o.order_id,
i.item_price,
o.quantity,
i.item_cat,
i.item_name,
o.created_at,
sh.day_of_week,
a.delivery_address1,
a.delivery_address2,
a.delivery_city,
a.delivery_zipcode,
o.delivery
FROM
orders o
LEFT JOIN item i ON o.item_id = i.item_id
LEFT join address a on o.address_id = a.address_id
left join rota ro on ro.date = o.created_at
left join shift sh on sh.shift_id = ro.shift_id