(deftemplate smartphone
  (slot marca)
  (slot modelo)
  (slot precio)
  (slot color)
  (slot stock)
)

(deftemplate computadora
  (slot marca)
  (slot modelo)
  (slot precio)
  (slot color)
  (slot stock)
)

(deftemplate accesorio
  (slot marca)
  (slot modelo)
  (slot precio)
  (slot color)
  (slot stock)
)

(deftemplate cliente
  (slot cliente-id)
  (slot nombre)
  (slot direccion)
  (slot telefono)
)

(deftemplate orden
  (multislot producto)
  (slot cliente-id)
  (slot qty)
)

(deftemplate tarjeta-cred
  (slot banco)
  (slot grupo)
  (slot exp-date)
)

(deftemplate vale
  (slot cantidad)
)
