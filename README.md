# pizzeria-db
This is the sql scripts and query code as the dashboard  of a pizzeria's db. 
The data was generate using Mockaroo.com, with some personalized formulas for the dates, orders and rota as well manually combination.
Looker studio from google was used to make the dasboard. the database was stored in GCP cloud sql conectec to mysql workbench.

the database include:
- 24 different pizzas.
- 30 ingredients
- 15 employees
- 320 address
- 500 customers
- 2000 orders

  You could create the tables from the scripts in "src" repository folder.


# Diagram
the datbase has the next tables:
- Address. where the orders are deliver.
- Customer. name and last name.
- Ingredient. the pizza ingredients.
- Inventory. the remain stock of ingredients.
- Item. Relation of pizza with name, category, size and price.
- Orders. relation with the data of the order: created at, item id, quantity, customer id, if is deliver, and the address.
- Recipe. This table has the portion of each ingredient for each pizza.
- Rota. the schedule of days to work, with the date, shift id and staff id.
- Shift. Days of the week with the block time of work.
- Staff. Table with the employees name, position and hourly rate.

  Tables diagram:
  ![pizzeria_db_diagram](https://github.com/Fidel-Angel-Ochoa/pizzeria-db/assets/82437732/f7d8bfa7-d206-4435-8154-5b9a17a34c2a)


# dashboard:

Links to the dashboard:

https://lookerstudio.google.com/reporting/0f781ebd-c7f4-4cac-98e5-4c12fd1fee1a

this first image describe the total sales, percentage of the orders are for deliver, the zone by orders quantity in the period time of a month.


![Pizzeria's_Activity-details](https://github.com/Fidel-Angel-Ochoa/pizzeria-db/assets/82437732/dc6fb167-4170-4550-a6b4-06187710878a)

Here is showed the inventory remaining, the dashboard automatically paints in red the ingredient stock with less than 25%, in yellow the ones that are between 25% and 50%, the rest is in withe. As well is showed the cost of each ingredient, "total quantity" ordered, and the cost of each pizza.

![Pizzeria's_Activity-details2](https://github.com/Fidel-Angel-Ochoa/pizzeria-db/assets/82437732/59221d0a-3be5-4980-989d-7278bec3fcd1)

Last is showed the total cost and total hours of the staff.

![Pizzeria's_Activity-details3](https://github.com/Fidel-Angel-Ochoa/pizzeria-db/assets/82437732/c5707eda-f235-45dc-a6e6-22b2b23218d6)
