//una compañia aseguradora desea la implementacion de un sistema de manejo de polizas. Las reglas del negocio son:

//1.si la suma aseguradora es menor o igual a 100,000, la aseguradora toma un 80% de dicha suma y distribuye el 20% restante entre 2 de sus socios.
//2.si la suma aseguradora es mayor a 100,000 y menor a 120,000, se distribuyen los primeros 100,000 aplicando el caso 1 y el resto se divide en partes iguales entre 2 socios.
//3.si la suma asegurada es mayor 120,000. se reparten los primeros 100,000 aplicando el caso 1, los siguientes 20,000 aplicando el caso 2 y el resto se le asignan a un socio con contrato especial.
Algoritmo Sistema_De_Manejo
	Definir SumaAsegurada, SumaTomada, SumaRestante, SumaEspecial Como Real
	Definir Socio1, Socio2, SocioEspecial Como Real
	
	Escribir "Ingrese la suma asegurada: "
	Leer SumaAsegurada
	
	Si SumaAsegurada <= 100000 Entonces
		SumaTomada <- SumaAsegurada * 0.8
		SumaRestante <- SumaAsegurada * 0.2 / 2
		Socio1 <- SumaRestante
		Socio2 <- SumaRestante
	SiNo 
		Si SumaAsegurada > 100000 Y SumaAsegurada < 120000  Entonces
			SumaTomada <- 100000 * 0.8
			SumaRestante <- (SumaAsegurada - 100000) / 2
			Socio1 <- SumaRestante
			Socio2 <- SumaRestante
		SiNo
			SumaTomada <- 100000 * 0.8 + 20000 * 0.8
			SumaEspecial <- SumaAsegurada - 100000 - 20000
			Socio1 <- 100000 * 0.2 / 2
			Socio2 <- 100000 * 0.2 / 2
			SocioEspecial <- SumaEspecial
		Fin Si
	Fin Si
	
	Escribir "Suma tomada por la aseguradora: ", sumaTomada
	Escribir "Suma asignada al socio 1: ", socio1
	Escribir "Suma asignada al socio 2: ", socio2
	Escribir "Suma asignada al socio especial: ", socioEspecial
FinAlgoritmo



