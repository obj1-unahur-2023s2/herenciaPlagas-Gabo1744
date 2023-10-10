import plagas.*

class Hogar {
	var nivelDeMugre
	var property confort
	
	method esBueno() = nivelDeMugre <= (confort/2)
	method efectoDelAtaque(plaga){
		nivelDeMugre = plaga.nivelDeDanio()
		plaga.efectoSobreLaPlaga()
	}
}

class Huerta {
	var capacidadProduccion 
	
	method esBueno() = capacidadProduccion > nivelDeProduccion.valorDelNivel()
	method efectoDelAtaque(plaga){
		if(plaga.transmitenEnfermedades()){
			capacidadProduccion = 0.max(capacidadProduccion -10)
		}
		capacidadProduccion = 0.max(capacidadProduccion - plaga.nivelDeDanio()*0.1)
		plaga.efectoSobreLaPlaga()
	}
}

object nivelDeProduccion{
	var property valorDelNivel = 100
}

class Mascota {
	var salud
	
	method esBueno() = salud > 250
	method efectoDelAtaque(plaga){
		if(plaga.transmitenEnfermedades()){
			salud = 0.max(salud - plaga.nivelDeDanio())
		}
		plaga.efectoSobreLaPlaga()
	}
}

