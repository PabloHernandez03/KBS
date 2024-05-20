
(defrule my-rule11
   (customer (name ?n)) => (printout t "Customer name found:" ?n  crlf ))

(defrule my-rule12
   (customer (customer-id 101) (name ?name) (address ?address))
   =>
   (printout t "customer-id 101 belongs to: " ?name " with address: " ?address crlf))



(defrule my-rule13
   (product (category electronics) (name ?name))
   =>
   (printout t "Electronic product found: " ?name crlf))


(defrule my-rule14
   (not (product (category smartphone) (price ?p&:(< ?p 50)) (name ?n)))
   =>
   (printout t "no smartphones cheaper than 50" crlf ))



(defrule my-rule15
   (product (category smartphone) (price ?p&:(< ?p 100)) (name ?n))
   =>
   (printout t ?n " is cheaper than 100 dlls" crlf ))

