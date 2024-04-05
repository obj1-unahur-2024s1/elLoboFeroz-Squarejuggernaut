import balaDeEscopeta.*

object escopeta {
	const pesoInicial = 20
	var cantidadDeBalas = 2
	
	method retirarBala() {
		cantidadDeBalas = (cantidadDeBalas - 1).max(0)
	}
	
	method tieneBalas() = cantidadDeBalas > 0
	
	method pesoTotal() = pesoInicial + balaDeEscopeta.pesoTotal()*cantidadDeBalas

	
}
