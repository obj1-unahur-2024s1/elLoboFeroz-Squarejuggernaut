object abuela {
	const pesoInicial = 50
	var peso = pesoInicial
	
	method pesoTotal() = peso
	
	method reducirPesoANada() {
		peso = 0
	}
	
	method recuperarPeso() {
		peso = pesoInicial
	}
}
