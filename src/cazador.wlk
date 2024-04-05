import escopeta.*
import feroz.*
import cuchilloDeCaza.*
import caperucita.*
import abuela.*

object cazador {

	const pesoInicial = 80
	var peso = pesoInicial

	method pesoTotal() = pesoInicial + escopeta.pesoTotal() + cuchilloDeCaza.pesoTotal()

	method reducirPesoANada() {
		peso = 0
	}

	method dispararEscopeta() {
		escopeta.retirarBala()
	}

	method lucharConFeroz() {
		if (escopeta.tieneBalas()) {
			self.dispararEscopeta()
			self.rescatarACaperucitaYLaAbuela()
		} else {
			feroz.comer(self)
		}
	}
	
	method rescatarACaperucitaYLaAbuela() {
		cuchilloDeCaza.romperse()
		feroz.sufrirCrisis()
		caperucita.recuperarPeso()
		abuela.recuperarPeso()
	}

}

