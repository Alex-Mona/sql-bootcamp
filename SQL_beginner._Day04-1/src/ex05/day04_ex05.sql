CREATE VIEW v_price_with_discount AS
WITH discount AS
	(SELECT name, pizza_name, price, ROUND(price - price * 0.1) AS discount_price 
		FROM person_order
		JOIN person ON person_id = person.id
		JOIN menu ON menu_id = menu.id)
SELECT discount.name, discount.pizza_name, discount.price, discount.discount_price
  FROM discount
 ORDER BY discount.name, discount.pizza_name;