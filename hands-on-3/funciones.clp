(deffunction agregar-enfermedad (?id ?nombre ?sintomas)
  (assert (enfermedad (id ?id) (nombre ?nombre) (sintomas ?sintomas)))
  (printout t "Enfermedad agregada: " ?nombre crlf)
)

(deffunction actualizar-enfermedad (?id ?nuevos-sintomas)
   (bind ?enfermedades (find-fact ((?e enfermedad)) (eq ?e:id ?id)))
   (if (and (not (eq ?enfermedades nil)) (> (length$ ?enfermedades) 0))
     then
         (bind ?enfermedad (nth$ 1 ?enfermedades))
         (bind ?nombre (fact-slot-value ?enfermedad nombre))
         (retract ?enfermedad)
         (assert (enfermedad (id ?id) (nombre ?nombre) (sintomas ?nuevos-sintomas)))
         (printout t "Enfermedad " ?nombre " con ID " ?id " actualizada." crlf)
     else
         (printout t "No se encontro la enfermedad con ID " ?id "." crlf)
   )
)

(deffunction borrar-enfermedad (?id)
   (bind ?enfermedades (find-fact ((?e enfermedad)) (eq ?e:id ?id)))
   (if (and (not (eq ?enfermedades nil)) (> (length$ ?enfermedades) 0))
     then
         (bind ?enfermedad (nth$ 1 ?enfermedades))
         (printout t "Enfermedad " (fact-slot-value ?enfermedad nombre) " con ID " ?id " eliminada." crlf)
         (retract ?enfermedad)
     else
         (printout t "No se encontro la enfermedad con ID " ?id "." crlf)
   )
)
