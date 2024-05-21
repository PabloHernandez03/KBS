;(load "C:/Users/Pablo/OneDrive - Universidad de Guadalajara/Documents/CUCEI docs/6 Semestre/SBC/sistemaexperto.clp")
(deftemplate smartphone
   (slot marca)
   (slot modelo)
   (slot color)
   (slot precio)
)

(deftemplate computadora
   (slot marca)
   (slot modelo)
   (slot color)
   (slot precio)
)

(deftemplate accesorio
   (slot tipo)
   (slot marca)
   (slot precio)
)

(deffacts smartphones
   (smartphone (marca "Apple") (modelo "iPhone 13") (color "Negro") (precio 999))
   (smartphone (marca "Samsung") (modelo "Galaxy S21") (color "Blanco") (precio 899))
   (smartphone (marca "Google") (modelo "Pixel 6") (color "Verde") (precio 799))
   (smartphone (marca "OnePlus") (modelo "9 Pro") (color "Rojo") (precio 969))
   (smartphone (marca "Xiaomi") (modelo "Mi 11") (color "Azul") (precio 749))
   (smartphone (marca "Sony") (modelo "Xperia 5") (color "Gris") (precio 849))
   (smartphone (marca "Sony") (modelo "Xperia 6") (color "Gris") (precio 949))
   (smartphone (marca "LG") (modelo "Wing") (color "Negro") (precio 699))
   (smartphone (marca "Huawei") (modelo "P50 Pro") (color "Dorado") (precio 999))
   (smartphone (marca "Nokia") (modelo "8.3 5G") (color "Azul") (precio 649))
   (smartphone (marca "Motorola") (modelo "Edge Plus") (color "Rojo") (precio 799))
)

(deffacts computadoras
   (computadora (marca "Apple") (modelo "MacBook Pro") (color "Gris") (precio 1299))
   (computadora (marca "Dell") (modelo "XPS 13") (color "Plateado") (precio 999))
   (computadora (marca "HP") (modelo "Spectre x360") (color "Negro") (precio 1199))
   (computadora (marca "Lenovo") (modelo "ThinkPad X1") (color "Negro") (precio 1099))
   (computadora (marca "Asus") (modelo "ZenBook 14") (color "Azul") (precio 899))
   (computadora (marca "Acer") (modelo "Swift 3") (color "Blanco") (precio 749))
   (computadora (marca "Microsoft") (modelo "Surface Laptop 4") (color "Negro") (precio 999))
   (computadora (marca "Razer") (modelo "Blade 15") (color "Negro") (precio 1599))
   (computadora (marca "MSI") (modelo "Prestige 14") (color "Gris") (precio 1099))
   (computadora (marca "Samsung") (modelo "Galaxy Book Pro") (color "Plata") (precio 1049))
)

(deffacts accesorios
   (accesorio (tipo "Auriculares") (marca "Sony") (precio 299))
   (accesorio (tipo "Teclado") (marca "Logitech") (precio 99))
   (accesorio (tipo "Ratón") (marca "Razer") (precio 79))
   (accesorio (tipo "Monitor") (marca "Dell") (precio 199))
   (accesorio (tipo "Cargador") (marca "Anker") (precio 49))
   (accesorio (tipo "Funda") (marca "Apple") (precio 39))
   (accesorio (tipo "Soporte para portátil") (marca "Twelve South") (precio 89))
   (accesorio (tipo "Disco Duro Externo") (marca "Seagate") (precio 109))
   (accesorio (tipo "Cámara Web") (marca "Logitech") (precio 129))
   (accesorio (tipo "Micrófono") (marca "Blue") (precio 149))
)

(deftemplate cliente
   (slot id)
   (slot nombre)
   (slot edad)
   (slot telefono)
)

(deffacts clientes
   (cliente (id 1) (nombre "Juan Pérez") (edad 30) (telefono "555-1234"))
   (cliente (id 2) (nombre "María García") (edad 25) (telefono "555-5678"))
   (cliente (id 3) (nombre "Luis Martínez") (edad 35) (telefono "555-8765"))
   (cliente (id 4) (nombre "Ana López") (edad 28) (telefono "555-4321"))
   (cliente (id 5) (nombre "Pedro González") (edad 40) (telefono "555-6789"))
   (cliente (id 6) (nombre "Laura Rodríguez") (edad 22) (telefono "555-9876"))
   (cliente (id 7) (nombre "Carlos Hernández") (edad 32) (telefono "555-3456"))
   (cliente (id 8) (nombre "Lucía Fernández") (edad 27) (telefono "555-6543"))
   (cliente (id 9) (nombre "Miguel Sánchez") (edad 45) (telefono "555-2345"))
   (cliente (id 10) (nombre "Elena Ramírez") (edad 29) (telefono "555-7890"))
)

(deftemplate tarjeta-credito
   (slot id)
   (slot numero)
   (slot titular)
   (slot banco)
   (slot grupo)
)

(deffacts tarjetas-credito
   (tarjeta-credito (id 1) (numero "1234-5678-9012-3456") (titular "Juan Pérez") (banco "BBVA") (grupo "Visa"))
   (tarjeta-credito (id 2) (numero "2345-6789-0123-4567") (titular "María García") (banco "Liverpool") (grupo "Mastercard"))
   (tarjeta-credito (id 3) (numero "3456-7890-1234-5678") (titular "Luis Martínez") (banco "HSBC") (grupo "Visa"))
   (tarjeta-credito (id 4) (numero "4567-8901-2345-6789") (titular "Ana López") (banco "America Express") (grupo "Mastercard"))
   (tarjeta-credito (id 5) (numero "5678-9012-3456-7890") (titular "Pedro González") (banco "BBVA") (grupo "Visa"))
   (tarjeta-credito (id 6) (numero "6789-0123-4567-8901") (titular "Laura Rodríguez") (banco "Liverpool") (grupo "Mastercard"))
   (tarjeta-credito (id 7) (numero "7890-1234-5678-9012") (titular "Carlos Hernández") (banco "HSBC") (grupo "Visa"))
   (tarjeta-credito (id 8) (numero "8901-2345-6789-0123") (titular "Lucía Fernández") (banco "America Express") (grupo "Mastercard"))
   (tarjeta-credito (id 9) (numero "9012-3456-7890-1234") (titular "Miguel Sánchez") (banco "BBVA") (grupo "Visa"))
   (tarjeta-credito (id 10) (numero "0123-4567-8901-2345") (titular "Elena Ramírez") (banco "Liverpool") (grupo "Mastercard"))
)

(deftemplate vale
   (slot codigo)
   (slot titular)
   (slot descripcion)
)

(deffacts vales
   (vale (codigo "15ELEC") (titular "Juan Pérez") (descripcion "15% Descuento en Computadoras"))
   (vale (codigo "ALLXIAOMI") (titular "María García") (descripcion "Protector y Mica en compra de un Xiaomi"))
   (vale (codigo "20CASHBACK") (titular "Luis Martínez") (descripcion "20% Cashback en accesorios"))
   (vale (codigo "HOTSALE") (titular "Ana López") (descripcion "30% Descuento en Productos HOT-SALE"))
)

(deftemplate orden-compra
   (slot cliente-id)
   (slot nombre-cliente)
   (slot telefono)
   (multislot producto)
   (slot cantidad)
   (slot metodo-pago)
)

(deffacts ordenes-compra
   (orden-compra (cliente-id 1) (nombre-cliente "Juan Pérez") (telefono "555-1234") (producto smartphone "Apple" "iPhone 13" 999) (cantidad 10) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 1) (nombre-cliente "Juan Pérez") (telefono "555-1234") (producto smartphone "Samsung" "Galaxy S21" 899) (cantidad 10) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 1) (nombre-cliente "Juan Pérez") (telefono "555-1234") (producto smartphone "OnePlus" "9 Pro" 969) (cantidad 10) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 2) (nombre-cliente "Luis Martínez") (telefono "555-5678") (producto smartphone "Samsung" "Galaxy S21" 899) (cantidad 2) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 3) (nombre-cliente "Luis Martínez") (telefono "555-8765") (producto computadora "Apple" "MacBook Pro" 1299) (cantidad 1) (metodo-pago "contado"))
   (orden-compra (cliente-id 4) (nombre-cliente "Ana López") (telefono "555-4321") (producto accesorio "Sony" "Auriculares" 299) (cantidad 2) (metodo-pago "contado"))
   (orden-compra (cliente-id 5) (nombre-cliente "Pedro González") (telefono "555-6789") (producto smartphone "Xiaomi" "Mi 11" 749) (cantidad 1) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 6) (nombre-cliente "Laura Rodríguez") (telefono "555-9876") (producto computadora "Dell" "XPS 13" 999) (cantidad 1) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 7) (nombre-cliente "Carlos Hernández") (telefono "555-3456") (producto accesorio "Razer" "Ratón" 79) (cantidad 1) (metodo-pago "contado"))
   (orden-compra (cliente-id 8) (nombre-cliente "Lucía Fernández") (telefono "555-6543") (producto smartphone "OnePlus" "9 Pro" 969) (cantidad 1) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 9) (nombre-cliente "Miguel Sánchez") (telefono "555-2345") (producto accesorio "Logitech" "Teclado" 99) (cantidad 20) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 9) (nombre-cliente "Miguel Sánchez") (telefono "555-2345") (producto accesorio "Sony" "Auriculares" 299) (cantidad 15) (metodo-pago "tarjeta"))
   (orden-compra (cliente-id 10) (nombre-cliente "Elena Ramírez") (telefono "555-7890") (producto smartphone "Sony" "Xperia 5" 849) (cantidad 1) (metodo-pago "contado"))
)
;1
(defrule mas-de-10-productos
    (orden-compra (nombre-cliente ?nombre) (cantidad ?cantidad&:(> ?cantidad 9)))
    (not (compro mas-de-10 ?nombre))
    =>
    (printout t "El cliente " ?nombre " ha comprado más de 10 productos" crlf)
    (assert (compro mas-de-10 ?nombre))
)
;2
(defrule mayorista-mas-de-10-productos
    (orden-compra (nombre-cliente ?nombre) (cantidad ?cantidad&:(> ?cantidad 9)))
    (compro mas-de-10 ?nombre)
    (not (es mayorista ?nombre))
    =>
    (printout t "El cliente " ?nombre " es un cliente mayorista por comprar más de 10 productos más de una vez" crlf)
    (assert (es mayorista ?nombre))
)
;3
(defrule menos-de-10-productos
    (orden-compra (nombre-cliente ?nombre) (cantidad ?cantidad&:(< ?cantidad 10)))
    (not (es mayorista ?nombre))
    =>
    (printout t "El cliente " ?nombre " ha comprado menos de 10 productos y es un menudista" crlf)
    (assert (es menudista ?nombre))
)
;4
(defrule clientes-sin-compra
    (cliente (nombre ?nombre))
    (not (orden-compra (nombre-cliente ?nombre)))
    =>
    (printout t "Aprovecha " ?nombre " y haz tu primer compra con 15% de descuento" crlf)
    (assert (vale (codigo "PRIMERAVEZ")(titular ?nombre) (descripcion (str-cat "Descuento del 15% en tu primera compra"))))
)
;5
(defrule generar-vale-cashback
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (cliente-id ?id) (metodo-pago "tarjeta"))
    (tarjeta-credito (titular ?nombre) (banco "BBVA"))
    (not (vale (codigo "BBVADOBLE")(titular ?nombre) (descripcion "30% en Puntos Dobles en tu próxima compra")))
    =>
    (printout t ?nombre " por comprar con TDC BBVA recibe 30% de Puntos Dobles en tu próxima compra" crlf)
    (assert (vale (codigo "BBVADOBLE")(titular ?nombre) (descripcion "30% en Puntos Dobles en tu próxima compra")))
)
;6
(defrule generar-vale-contado
    (cliente (nombre ?nombre) (telefono ?telefono))
    (not (orden-compra (nombre-cliente ?nombre) (metodo-pago "tarjeta")))
    (orden-compra (nombre-cliente ?nombre) (metodo-pago "contado"))
    =>
    (assert (vale (codigo "TDCPRIMERAVEZ")(titular ?nombre) (descripcion "Vale por 10% de descuento en tu próxima compra usando tarjeta")))
    (printout t ?nombre " usa tu tarjeta y aprovecha 10% de descuento" crlf)
)
;7
(defrule cliente-compro-smartphones
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto smartphone $?))
    (not (compro smartphone ?nombre))
    =>
    (printout t "El cliente " ?nombre "ha comprado smartphone." crlf)
    (assert (compro smartphone ?nombre))
)
;8
(defrule cliente-compro-smartphones-dos-veces
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto smartphone $?))
    (compro smartphone ?nombre)
    =>
    (printout t "El cliente " ?nombre " ha comprado smartphones al menos dos veces." crlf)
    (assert (consume smartphones ?nombre))
)
;9
(defrule cliente-compro-computadoras
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto computadora $?))
    (not (compro computadora ?nombre))
    =>
    (printout t "El cliente " ?nombre "ha comprado computadora." crlf)
    (assert (compro computadora ?nombre))
)
;10
(defrule cliente-compro-computadoras-dos-veces
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto computadora $?))
    (compro computadora ?nombre)
    =>
    (printout t "El cliente " ?nombre " ha comprado computadoras al menos dos veces." crlf)
    (assert (consume computadoras ?nombre))
)
;11
(defrule cliente-compro-accesorios
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto accesorio $?))
    (not (compro accesorio ?nombre))
    =>
    (printout t "El cliente " ?nombre "ha comprado accesorio." crlf)
    (assert (compro accesorio ?nombre))
)
;12
(defrule cliente-compro-accesorios-dos-veces
    (cliente (nombre ?nombre))
    (orden-compra (nombre-cliente ?nombre) (producto accesorio $?))
    (compro accesorio ?nombre)
    =>
    (printout t "El cliente " ?nombre " ha comprado accesorios al menos dos veces." crlf)
    (assert (consume accesorios ?nombre))
)
;13
(defrule oferta-mayorista
    (es mayorista ?nombre)
    =>
    (printout t ?nombre "eres mayorista y recibiras 20% de descuento en tu siguiente compra de por lo menos 10 productos" crlf)
    (assert (vale (codigo "MAYORISTA")(titular ?nombre) (descripcion "20% de descuento en tu siguiente compra con cantidad minima de 10")))
)
;14
(defrule asignar-vale-mastercard
   (tarjeta-credito (titular ?nombre) (grupo "Mastercard"))
   =>
   (printout t ?nombre "Utiliza tu TDC Mastercard para comprar" crlf)
   (assert (vale (codigo "MASTERCARD")(titular ?nombre) (descripcion "Usa tu TDC MasterCard y recibe 12 MSI")))
)
;15
(defrule oferta-mastercard-smartphone
   (tarjeta-credito (titular ?nombre) (grupo "Mastercard"))
   (orden-compra (nombre-cliente ?nombre) (producto accesorio $?))
   =>
   (printout t ?nombre " por comprar un accesorio puedes usar tu TDC Mastercard para comprar otro con 10% cashback" crlf)
   (assert (vale (codigo "MASTERCARD")(titular ?nombre) (descripcion "Usa tu TDC MasterCard y recibe 10% cashback en accesorios")))
)
;16

;17
;18
;19
;20

