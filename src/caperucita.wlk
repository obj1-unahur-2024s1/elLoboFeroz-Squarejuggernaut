import canasta.*

object caperucita {
	
	const pesoInicial = 60
	var peso = pesoInicial
	
	method pesoTotal() = pesoInicial + canasta.pesoTotal()
	
	method reducirPesoANada() {
		peso = 0
	}
	
	method recuperarPeso() {
		peso = pesoInicial
	}
	
	method perderUnaManzanaDeLaCanasta() {
		canasta.descontarUnaManzana()
	}
}
