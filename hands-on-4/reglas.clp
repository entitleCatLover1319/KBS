(defrule aplicar-vale
  (orden (cliente-id ?id))
  ?metodo-compra <- (comprado-con contado)
  ?vale <- (vale (cantidad ?cant))
  =>
  (printout t "Vale de " ?cant " aplicado a su compra de contado.")
  (retract ?vale)
)

(defrule oferta-accesorio-jbl
  (orden (producto $?atributos) (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred santander mastercard)
  (test (member$ smartphone ?atributos))
  =>
  (printout t "En la compra de su celular con tarjeta Santander Mastercard se le ofrece un descuento de 50 MXN en audífonos JLB Tune 510BT." crlf)
)

(defrule contado-computadora-hp-elitebook-840-g7
  (orden (producto computadora "HP" "EliteBook 840 G7") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con contado)
  ?computadora <- (computadora (marca "HP") (modelo "EliteBook 840 G7") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar a HP EliteBook 840 G7 de contado se le relagan 100 MXN en vales por cada 5,000 MXN de compra." crlf)
  (modify ?computadora (stock (- ?stock ?qty)))
  (printout t "Stock de HP EliteBook 840 G7 reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
  (bind ?int (* 100 (integer (/ (* ?precio ?qty) 5000))))
  (assert (vale (cantidad ?int)))
  (printout t "Vale por " ?int ". Solo aplicable pagando a contado" crlf)
)

(defrule msi-smartphone-samsung-s24-fe
  (orden (producto smartphone "Samsung" "Galaxy S24 FE") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred bbva visa)
  ?smartphone <- (smartphone (marca "Samsung") (modelo "Galaxy S24 FE") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Galaxy S24 FE con tarjeta de crédito BBVA se le ofrecen 12 MSI." crlf)
  (modify ?smartphone (stock (- ?stock ?qty)))
  (printout t "Stock de Galaxy S24 FE reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
)

(defrule msi-smartphone-samsung-m15-5g
  (orden (producto smartphone "Samsung" "Galaxy M15 5G") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred banamex visa)
  ?smartphone <- (smartphone (marca "Samsung") (modelo "Galaxy S24 FE") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Galaxy S24 FE con tarjeta de crédito Banamex se le ofrecen 12 MSI." crlf)
  (modify ?smartphone (stock (- ?stock ?qty)))
  (printout t "Stock de Galaxy S24 FE reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
)

(defrule descuento-computadora-victus
  (orden (producto computadora "HP" "Victus") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred banamex visa)
  ?computadora <- (computadora (marca "HP") (modelo "Victus") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Victus con tarjeta de crédito Banamex 1,000 MXN de descuento." crlf)
  (modify ?computadora (stock (- ?stock ?qty)))
  (printout t "Stock de Victus reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
)

(defrule descuento-smartphone-samsung-a06
  (orden (producto smartphone "Samsung" "Galaxy A06") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred santander mastercard)
  ?smartphone <- (smartphone (marca "Samsung") (modelo "Galaxy A06") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Galaxy A06 con tarjeta de crédito Santander se le descuentan 200 MXN." crlf)
  (modify ?smartphone (stock (- ?stock ?qty)))
  (printout t "Stock de Galaxy A06 reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
)

(defrule msi-smartphone-samsung-z-fold6
  (orden (producto smartphone "Samsung" "Galaxy Z Fold6") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred hsbc mastercard)
  ?smartphone <- (smartphone (marca "Samsung") (modelo "Galaxy Z Fold6") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Galaxy Z Fold6 con tarjeta de crédito HSBC se le ofrecen 18 MSI." crlf)
  (modify ?smartphone (stock (- ?stock ?qty)))
  (printout t "Stock de Galaxy Z Fold6 reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
)

(defrule descuento-smartphone-huawei-nova-12i
  (orden (producto smartphone "Huawei" "Nova 12i") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred banamex visa)
  ?smartphone <- (smartphone (marca "Huawei") (modelo "Nova 12i") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Nova 12i con tarjeta de crédito Banamex se le descuentan 300 MXN." crlf)
  (modify ?smartphone (stock (- ?stock ?qty)))
  (printout t "Stock de Nova 12i reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
)

(defrule msi-computadora-lenovo-ideapad-3
  (orden (producto computadora "Lenovo" "IdeaPad 3") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred bbva mastercard)
  ?computadora <- (computadora (marca "Lenovo") (modelo "IdeaPad 3") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Lenovo IdeaPad 3 con tarjeta de crédito BBVA se le ofrecen 6 MSI." crlf)
  (modify ?computadora (stock (- ?stock ?qty)))
  (printout t "Stock de Lenovo IdeaPad 3 reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
)

(defrule msi-computadora-lenovo-slim-5
  (orden (producto computadora "Lenovo" "IdeaPad Slim 5") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred hsbc mastercard)
  ?computadora <- (computadora (marca "Lenovo") (modelo "IdeaPad Slim 5") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Lenovo IdeaPad Slim 5 con tarjeta de crédito HSBC se le ofrecen 12 MSI." crlf)
  (modify ?computadora (stock (- ?stock ?qty)))
  (printout t "Stock de Lenovo IdeaPad Slim 5 reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
)

(defrule contado-computadora-lenovo-ideapad-3
  (orden (producto computadora "Lenovo" "IdeaPad 3") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con contado)
  ?computadora <- (computadora (marca "Lenovo") (modelo "IdeaPad 3") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Lenovo IdeaPad 3 de contado se regalan 150 MXN en vales por cada 10,000 MXN de compra." crlf)
  (modify ?computadora (stock (- ?stock ?qty)))
  (printout t "Stock de Lenovo IdeaPad 3 reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
  (bind ?int (* 150 (integer (/ (* ?precio ?qty) 10000))))
  (assert (vale (cantidad ?int)))
  (printout t "Vale por " ?int ". Solo aplicable pagando a contado." crlf)
)

(defrule contado-smartphone-huawei-nova-12i
  (orden (producto smartphone "Huawei" "Nova 12i") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con contado)
  ?smartphone <- (smartphone (marca "Huawei") (modelo "Nova 12i") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Huawei Nova 12i de contado se regalan 50 MXN en vales por cada 2,000 MXN de compra." crlf)
  (modify ?smartphone (stock (- ?stock ?qty)))
  (printout t "Stock de Huawei Nova 12i reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
  (bind ?int (* 50 (integer (/ (* ?precio ?qty) 2000))))
  (assert (vale (cantidad ?int)))
  (printout t "Vale por " ?int ". Solo aplicable pagando a contado." crlf)
)

(defrule contado-computadora-hp-victus
  (orden (producto computadora "HP" "Victus") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con contado)
  ?computadora <- (computadora (marca "HP") (modelo "Victus") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar HP Victus de contado se regalan 200 MXN en vales por cada 20,000 MXN de compra." crlf)
  (modify ?computadora (stock (- ?stock ?qty)))
  (printout t "Stock de HP Victus reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
  (bind ?int (* 200 (integer (/ (* ?precio ?qty) 20000))))
  (assert (vale (cantidad ?int)))
  (printout t "Vale por " ?int ". Solo aplicable pagando a contado." crlf)
)

(defrule contado-smartphone-samsung-galaxy-z-fold6
  (orden (producto smartphone "Samsung" "Galaxy Z Fold6") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con contado)
  ?smartphone <- (smartphone (marca "Samsung") (modelo "Galaxy Z Fold6") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Samsung Galaxy Z Fold6 de contado se regalan 500 MXN en vales por cada 50,000 MXN de compra." crlf)
  (modify ?smartphone (stock (- ?stock ?qty)))
  (printout t "Stock de Samsung Galaxy Z Fold6 reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
  (bind ?int (* 500 (integer (/ (* ?precio ?qty) 50000))))
  (assert (vale (cantidad ?int)))
  (printout t "Vale por " ?int ". Solo aplicable pagando a contado." crlf)
)

(defrule contado-smartphone-huawei-p60-pro
  (orden (producto smartphone "Huawei" "P60 Pro") (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con contado)
  ?smartphone <- (smartphone (marca "Huawei") (modelo "P60 Pro") (precio ?precio) (stock ?stock))
  (test (>= ?stock ?qty))
  =>
  (printout t "Por comprar Huawei P60 Pro de contado se regalan 300 MXN en vales por cada 15,000 MXN de compra." crlf)
  (modify ?smartphone (stock (- ?stock ?qty)))
  (printout t "Stock de Huawei P60 Pro reducido en " ?qty "." crlf)
  (retract ?metodo-compra)
  (bind ?int (* 300 (integer (/ (* ?precio ?qty) 15000))))
  (assert (vale (cantidad ?int)))
  (printout t "Vale por " ?int ". Solo aplicable pagando a contado." crlf)
)

(defrule oferta-accesorio-sony
  (orden (producto $?atributos) (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred hsbc mastercard)
  (test (member$ smartphone ?atributos))
  =>
  (printout t "En la compra de su celular con tarjeta HSBC Mastercard se le ofrece un descuento de 100 MXN en audífonos Sony WH-CH720N." crlf)
)

(defrule oferta-accesorio-mica
  (orden (producto $?atributos) (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred bbva visa)
  (test (member$ computadora ?atributos))
  =>
  (printout t "Al comprar su celular con BBVA Visa se le ofrece un descuento de 50 MXN en una mica." crlf)
)

(defrule oferta-accesorio-funda-celular
  (orden (producto $?atributos) (cliente-id ?id) (qty ?qty))
  ?metodo-compra <- (comprado-con tarjeta-cred citibanamex visa)
  (test (member$ smartphone ?atributos))
  =>
  (printout t "En la compra de su smartphone con tarjeta Citibanamex Visa, se le ofrece un descuento de 150 MXN en una funda." crlf)
)

(defrule clasificacion-cliente
  (orden (cliente-id ?id) (qty ?qty))
  (cliente (cliente-id ?id) (nombre ?nombre))
  =>
  (if (< ?qty 10)
    then (printout t "El cliente " ?nombre " es MENUDISTA." crlf)
    else (printout t "El cliente " ?nombre " es MAYORISTA." crlf)
  )
)
