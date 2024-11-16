(deffacts smartphones
  (smartphone (marca "Samsung") (modelo "Galaxy S24 FE") (precio 14499.00) (color "Grafito") (stock 10))
  (smartphone (marca "Samsung") (modelo "Galaxy A06") (precio 2199.00) (color "Azul Claro") (stock 10))
  (smartphone (marca "Samsung") (modelo "Galaxy Z Fold6") (precio 51999.00) (color "Sombra Plateada") (stock 10))
  (smartphone (marca "Samsung") (modelo "Galaxy Z Flip6") (precio 24999.00) (color "Azul") (stock 10))
  (smartphone (marca "Samsung") (modelo "Galaxy M15 5G") (precio 3999.00) (color "Azul Oscuro") (stock 10))
  (smartphone (marca "Huawei") (modelo "Nova 12i") (precio 3389.00) (color "Negro Grafito") (stock 10))
  (smartphone (marca "Huawei") (modelo "Nova 12 SE") (precio 5319.00) (color "Negro") (stock 10))
  (smartphone (marca "Huawei") (modelo "P60 Pro") (precio 18833.00) (color "Perla") (stock 10))
)

(deffacts computadoras
  (computadora (marca "Lenovo") (modelo "IdeaPad 3") (precio 9926.00) (color "Negro") (stock 10))
  (computadora (marca "Lenovo") (modelo "IdeaPad Slim 5") (precio 10999.00) (color "Plata") (stock 10))
  (computadora (marca "Lenovo") (modelo "IdeaPad Slim 3") (precio 8999.00) (color "Abyss Blue") (stock 10))
  (computadora (marca "Lenovo") (modelo "ThinkPad T14 Gen 1") (precio 6539.00) (color "Negro") (stock 10))
  (computadora (marca "HP") (modelo "15-fd0045la") (precio 8694.00) (color "Plata") (stock 10))
  (computadora (marca "HP") (modelo "EliteBook 840 G7") (precio 6899.00) (color "Plata") (stock 10))
  (computadora (marca "HP") (modelo "Victus") (precio 17091.00) (color "Azul abismo") (stock 10))
)

(deffacts accesorios
  (accesorio (marca "JBL") (modelo "Tune 510BT") (precio 575.00) (color "Negro") (stock 10))
  (accesorio (marca "Sony") (modelo "WH-CH720N") (precio 1999.00) (color "Blanco") (stock 10))
  (accesorio (marca "Soundcore") (modelo "Anker Life Q30") (precio 1599.00) (color "Rosa Coral") (stock 10))
  (accesorio (marca "Skullcandy") (modelo "Hesh ANC") (precio 1464.00) (color "Negro") (stock 10))
  (accesorio (marca "Huawei") (modelo "FreeButs SE 2") (precio 553.00) (color "Blanco") (stock 10))
  (accesorio (marca "Generica") (modelo "Funda Celular") (precio 200.00) (color "Negro") (stock 10))
  (accesorio (marca "Generica") (modelo "Funda Laptop") (precio 200.00) (color "Negro") (stock 10))
  (accesorio (marca "Generica") (modelo "Mirca Celular") (precio 200.00) (color "Transparente") (stock 10))
  (accesorio (marca "Generica") (modelo "Mirca Laptop") (precio 200.00) (color "Transparente") (stock 10))
)

(deffacts clientes
  (cliente (cliente-id 307) (nombre "Alberto Ramirez") (direccion "345 Chapalita") (telefono 3347859037))
  (cliente (cliente-id 582) (nombre "Rocio Alcantar") (direccion "6573 Alemania") (telefono 3372498756))
  (cliente (cliente-id 299) (nombre "Hernesto Pantoja") (direccion "9241 Isla Pelicanos") (telefono 3349812219))
  (cliente (cliente-id 553) (nombre "Jocelyn Martinez") (direccion "5872 Bahia Lobos") (telefono 3317509834))
  (cliente (cliente-id 904) (nombre "Eduardo Altamirano") (direccion "4344 Nueva Frontera") (telefono 3355847352))
  (cliente (cliente-id 808) (nombre "Yajaira Miramontes") (direccion "2358 La Noria") (telefono 3367349575))
)

(deffacts ordenes-compra
  (orden (producto smartphone "Samsung" "Galaxy Z Fold6") (cliente-id 306) (qty 5))
  (orden (producto computadora "Lenovo" "IdeaPad Slim 5") (cliente-id 300) (qty 1))
)

(deffacts tarjetas-cred
  (tarjeta-cred (banco bbva) (grupo visa) (exp-date "11/26"))
  (tarjeta-cred (banco banamex) (grupo visa) (exp-date "08/30"))
  (tarjeta-cred (banco banamex) (grupo visa) (exp-date "02/26"))
  (tarjeta-cred (banco hsbc) (grupo mastercard) (exp-date "03/28"))
  (tarjeta-cred (banco santander) (grupo mastercard) (exp-date "04/28"))
  (tarjeta-cred (banco azteca) (grupo mastercard) (exp-date "10/28"))
)

(deffacts vales
  (vale (cantidad 100.00))
  (vale (cantidad 200.00))
  (vale (cantidad 500.00))
  (vale (cantidad 1000.00))
)
