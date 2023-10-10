class Plaga {
	var poblacion
	method transmitenEnfermedades(){
		return poblacion >= 10
	}
	method efectoSobreLaPlaga(){
		poblacion = poblacion * 1.1
	}
}

class Cucarachas inherits Plaga{
	var pesoPromedio
	
	method nivelDeDanio() = poblacion / 2
	override method transmitenEnfermedades() = super() and pesoPromedio >= 10
	override method efectoSobreLaPlaga(){
		super()
		pesoPromedio += 2
	}
}

class Pulgas inherits Plaga{
	
	method nivelDeDanio() = poblacion *2
}

class Garrapatas inherits Pulgas{
	
	override method efectoSobreLaPlaga(){
		poblacion = poblacion * 1.2
	}
}

class Mosquitos inherits Plaga{
	
	method nivelDeDanio() = poblacion
	override method transmitenEnfermedades() = super() and poblacion % 3 == 0
}
