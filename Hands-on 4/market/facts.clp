

(deffacts products 
 	(product (name USBMem) (category storage) (part-number 1234) (price 199.99))
 	(product (name Amplifier) (category electronics) (part-number 2341) (price 399.99))
 	(product (name "Rubber duck") (category mechanics) (part-number 3412) (price 99.99))
	(product (name "External Hard Drive") (category storage) (part-number 1235) (price 129.99))
    	(product (name "Bluetooth Speaker") (category electronics) (part-number 2342) (price 79.99))
    	(product (name "Toolbox") (category mechanics) (part-number 3413) (price 39.99))
    	(product (name "Laptop Sleeve") (category accessories) (part-number 4567) (price 19.99))
)

(deffacts customers
  (customer (customer-id 101) (name joe) (address bla bla bla) (phone 3313073905))
  (customer (customer-id 102) (name mary) (address bla bla bla) (phone 333222345))
  (customer (customer-id 103) (name bob) (address bla bla bla) (phone 331567890))
  (customer (customer-id 104) (name emma) (address 789 Oak St) (phone 5552468139))
  (customer (customer-id 105) (name william) (address 101 Pine St) (phone 5553692584))
  (customer (customer-id 106) (name sophia) (address 222 Maple St) (phone 5559753186))
)  	 


(deffacts orders 
	(order (order-number 300) (customer-id 102))
	(order (order-number 301) (customer-id 103))
	(order (order-number 302) (customer-id 104))
    	(order (order-number 303) (customer-id 105))
    	(order (order-number 304) (customer-id 106))
)

(deffacts items-list
	(line-item (order-number 300) (customer-id 102) (part-number 1234) (quantity 6))
	(line-item (order-number 301) (customer-id 103) (part-number 2341) (quantity 10))
	(line-item (order-number 302) (customer-id 104) (part-number 1235) (quantity 3))
    	(line-item (order-number 303) (customer-id 105) (part-number 2342) (quantity 1))
    	(line-item (order-number 304) (customer-id 106) (part-number 3413) (quantity 6))
)

