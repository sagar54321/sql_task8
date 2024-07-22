select * from sales

select * from sales where customer_id ~* 'tb'

select order_id,product_id from sales where product_id ~* '^fur-bo'
	
select order_id,product_id from sales where product_id ~* '^[a-z]{3}-[a-z]{2}-[0-9]{8}$'

select customer_id, product_id,sales::varchar from sales where sales::varchar ~* '[2-9](2|4|6){2}.[0-9]6'

select customer_id,product_id from sales where product_id ~* '[a-t]{3}-[a-h]{2}-[0-6]{8}$'

select * from customer

select customer_id,customer_name from customer where customer_name ~* '[a-t][a-z]{7}$' order by customer_name

select customer_id,postal_code::varchar from customer where postal_code::varchar ~* '^(1|2|3|4)[0-9]{2}(1|2|8|9)[4-9]$'

select customer_id,customer_name,age from customer where customer_id ~* '^hh-[0-9]{5}$' or customer_id ~* '^sg-[0-9]{5}$'

select customer_id,customer_name,age::varchar,segment from customer where segment ~* '^co[a-z]{7}$' and age::varchar ~* '^(2|3|4)[0-9]$'

select customer_id,customer_name,age::varchar,region from customer where age::varchar ~* '^(2|3|4|5)[0-9]$' and segment = 'Corporate' and region ~* '[a-t](e|s|t)'