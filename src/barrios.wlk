import elementos.*

class Barrio {
	const property elementos = []
	
	method cantidadDeBuenos() = elementos.count({e => e.esBueno()})
	method cantidadDeMalos() = elementos.count({e => not e.esBueno()})
	method esCopado() = self.cantidadDeBuenos() > self.cantidadDeMalos()
}