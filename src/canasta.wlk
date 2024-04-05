import manzana.*
object canasta {
	var cantidadDeManzanas = 6
	
	method cantidadActualDeManzanas() = cantidadDeManzanas
	
	method descontarUnaManzana() {
		cantidadDeManzanas = (cantidadDeManzanas - 1).max(0)
	}
	method pesoTotal() = cantidadDeManzanas * manzana.pesoTotal()
}
