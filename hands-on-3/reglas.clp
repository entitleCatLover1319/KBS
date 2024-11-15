;(defrule diagnostico
;  ?e <- (enfermedad (nombre ?nombre) (sintomas ))
;)

(defrule enfermedades
  ?e <- (enfermedad (id ?id) (nombre ?nombre) (sintomas $?sintomas))
  =>
  (printout t "ID: " ?id ", Nombre: " ?nombre ", Sintomas: " ?sintomas crlf)
)

(defrule consultar-enfermedad-por-nombre
   ?nombre <- (nombre ?nombre-buscado)
   =>
   (printout t "Buscando enfermedad: " ?nombre-buscado crlf)
   (do-for-all-facts ((?e enfermedad))
      (if (eq ?e:nombre ?nombre-buscado)
         then
            (printout t "ID: " ?e:id ", Nombre: " ?e:nombre ", Sintomas: " ?e:sintomas crlf)
      )
   )
)

(defrule consultar-enfermedad-por-sintoma
  ?sintoma <- (sintoma ?sintoma-buscado)
  =>
  (printout t "Buscando enfermedades con sintoma: " ?sintoma-buscado crlf)
  (do-for-all-facts ((?e enfermedad))
    (if (member$ ?sintoma-buscado ?e:sintomas)
      then
        (printout t "ID: " ?e:id ", Nombre: " ?e:nombre ", Sintomas: " ?e:sintomas crlf)
    )
  )
)
