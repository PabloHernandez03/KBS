;(load "C:/Users/Pablo/OneDrive - Universidad de Guadalajara/Documents/CUCEI docs/6 Semestre/SBC/facts.clp")
(deffacts estado-inicial
	(pasos (create$ mono-ve-banana))
	(mono sobre piso)
	(mono esta hambriento)
	(mono lejos silla)
	(mono lejos escritorio)
	(banana colgada-en techo)
	(banana con cascara)
	(silla sobre piso)
	(silla lejos escritorio)
	(silla es ligera)
	(escritorio sobre piso)
	(escritorio no-debajo banana)
	(escritorio es pesado)
)

(defrule mono-va-hacia-el-escritorio
   	(mono sobre piso)
	(escritorio sobre piso)
	(banana colgada-en techo)
	(escritorio no-debajo banana)
	?basura1 <- (mono lejos escritorio)
    	?pasos <- (pasos ?plan)
    	=>
    	(assert (mono cerca escritorio))
    	(bind ?nueva-paso (create$ mono-va-hacia-el-escritorio))
    	(assert (pasos ?nueva-paso))
    	(retract ?basura1)
	(retract ?pasos)	
)

(defrule mono-arrastra-el-escritorio-debajo-banana
   	(mono cerca escritorio)
	?basura1 <- (escritorio no-debajo banana)
	(escritorio es pesado)
    	?pasos <- (pasos ?plan)
    	=>
    	(assert (escritorio debajo banana))
    	(bind ?nueva-paso (create$ (str-cat ?plan " " mono-arrastra-el-escritorio-debajo-banana)))
    	(assert (pasos ?nueva-paso))
    	(retract ?basura1)
	(retract ?pasos)	
)

(defrule mono-levanta-el-escritorio-debajo-banana
   	(mono cerca escritorio)
	?basura1 <- (escritorio no-debajo banana)
	(escritorio es ligero)
    	?pasos <- (pasos ?plan)
    	=>
    	(assert (escritorio debajo banana))
    	(bind ?nueva-paso (create$ (str-cat ?plan " " mono-levanta-el-escritorio-debajo-banana)))
    	(assert (pasos ?nueva-paso))
    	(retract ?basura1)
	(retract ?pasos)	
)

(defrule mono-va-hacia-la-silla-1
   	(mono sobre piso)
	(silla sobre piso)
	(escritorio debajo banana)
    	?basura1 <- (mono lejos silla)
	?basura2 <- (mono cerca escritorio)
    	?pasos <- (pasos ?plan)
    	=>
    	(assert (mono cerca silla))
	(assert (mono lejos escritorio))
    	(bind ?nueva-paso (create$ (str-cat ?plan " " mono-va-hacia-la-silla)))
    	(assert (pasos ?nueva-paso))
    	(retract ?basura1)
	(retract ?basura2)
	(retract ?pasos)	
)

(defrule mono-va-hacia-la-silla
   	(mono sobre piso)
	(silla sobre piso)
	(escritorio debajo banana)
	(mono lejos escritorio)
    	?basura1 <- (mono lejos silla)
    	?pasos <- (pasos ?plan)
    	=>
    	(assert (mono cerca silla))
    	(bind ?nueva-paso (create$ (str-cat ?plan " " mono-va-hacia-la-silla)))
    	(assert (pasos ?nueva-paso))
    	(retract ?basura1)
	(retract ?pasos)	
)

(defrule mono-levanta-la-silla
	?basura1 <- (mono cerca silla)
	(silla es ligera)
	?basura2 <- (silla sobre piso)
   	?pasos <- (pasos ?plan)
	=>
	(assert (mono con silla))
	(bind ?nuevo-paso (create$ (str-cat ?plan " " mono-levanta-la-silla)))
    	(assert (pasos ?nuevo-paso))
	(retract ?basura1)
	(retract ?basura2)
    	(retract ?pasos)
)

(defrule mono-va-hacia-el-escritorio-con-silla
	(mono con silla)
	?basura1 <- (mono lejos escritorio)
	?basura2 <- (silla lejos escritorio)
   	?pasos <- (pasos ?plan)
	=>
	(assert (mono cerca escritorio))
	(assert (silla cerca escritorio))
	(bind ?nuevo-paso (create$ (str-cat ?plan " " mono-va-hacia-con-silla)))
    	(assert (pasos ?nuevo-paso))
	(retract ?basura1)
	(retract ?basura2)
    	(retract ?pasos)
)

(defrule mono-pone-la-silla-sobre-el-escritorio
	?basura1 <- (mono con silla)
	?basura2 <- (mono cerca escritorio)
	?basura3 <- (silla cerca escritorio)
   	?pasos <- (pasos ?plan)
	=>
	(assert (silla sobre escritorio))
	(bind ?nuevo-paso (create$ (str-cat ?plan " " mono-pone-la-silla-sobre-el-escritorio)))
    	(assert (pasos ?nuevo-paso))
	(retract ?basura1)
	(retract ?basura2)
	(retract ?basura3)
    	(retract ?pasos)
)

(defrule mono-se-sube-al-escritorio
	(silla sobre escritorio)
	?basura1 <- (mono sobre piso)
   	?pasos <- (pasos ?plan)
	=>
	(assert (mono sobre escritorio))
	(bind ?nuevo-paso (create$ (str-cat ?plan " " mono-se-sube-al-escritorio)))
    	(assert (pasos ?nuevo-paso))
	(retract ?basura1)
    	(retract ?pasos)
)

(defrule mono-se-sube-a-la-silla
	?basura1 <- (mono sobre escritorio)
   	?pasos <- (pasos ?plan)
	=>
	(assert (mono sobre silla))
	(assert (mono alcanza banana))
	(bind ?nuevo-paso (create$ (str-cat ?plan " " mono-se-sube-a-la-silla)))
    	(assert (pasos ?nuevo-paso))
	(retract ?basura1)
    	(retract ?pasos)
)


(defrule mono-agarra-banana
	?basura1 <- (mono alcanza banana)
	?basura2 <- (banana colgada-en techo)
   	?pasos <- (pasos ?plan)
	=>
	(assert (mono con banana))
	(bind ?nuevo-paso (create$ (str-cat ?plan " " mono-se-sube-a-la-silla)))
    	(assert (pasos ?nuevo-paso))
	(retract ?basura1)
	(retract ?basura2)
    	(retract ?pasos)
)

(defrule mono-pela-banana
	(mono con banana)
	?basura1 <- (banana con cascara)
   	?pasos <- (pasos ?plan)
	=>
	(assert (banana esta pelada))
	(bind ?nuevo-paso (create$ (str-cat ?plan " " mono-pela-banana)))
    	(assert (pasos ?nuevo-paso))
	(retract ?basura1)
    	(retract ?pasos)
)

(defrule mono-come-banana
	?basura1 <- (banana esta pelada)
	?basura2 <- (mono con banana)
   	?pasos <- (pasos ?plan)
	=>
	(assert (mono come banana))
	(bind ?nuevo-paso (create$ (str-cat ?plan " " mono-come-banana)))
    	(assert (pasos ?nuevo-paso))
	(retract ?basura1)
	(retract ?basura2)
    	(retract ?pasos)
)

(defrule mono-esta-feliz
	?basura1 <- (mono come banana)
	?basura2 <- (mono esta hambriento)
   	?pasos <- (pasos ?plan)
	=>
	(assert (mono esta feliz))
	(bind ?nuevo-paso (create$ (str-cat ?plan " " mono-esta-feliz)))
    	(assert (pasos ?nuevo-paso))
	(retract ?basura1)
	(retract ?basura2)
    	(retract ?pasos)
)

(defrule impresion-del-plan
    	(pasos ?plan)
    	=>
    	(printout t ?plan crlf)
	(facts)
)