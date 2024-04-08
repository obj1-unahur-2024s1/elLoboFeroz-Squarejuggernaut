import caperucita.*
import abuela.*
import cazador.*
import casaDePaja.*
import casaDeMadera.*
import casaDeLadrillo.*

object feroz {

	const pesoInicial = 10
	var pesoActual = pesoInicial

	method estaSaludable() = pesoActual.between(20, 150)

	method pesoActual() = pesoActual

	method aumentarPeso(unidades) {
		pesoActual += unidades
	}

	method reducirPeso(unidades) {
		pesoActual = (pesoActual - unidades).max(0)
	}

	method sufrirCrisis() {
		pesoActual = pesoInicial
	}

	method comer(alimento) {
		pesoActual += alimento.pesoTotal() * 0.1
		alimento.reducirPesoANada()
	}
	
	method comer(cantidad, alimento) {
		pesoActual += (alimento.pesoTotal() * 0.1) * cantidad
		alimento.reducirPesoANada()
	}

	method correrHacia(lugar) {
		pesoActual = (pesoActual - 1).max(0)
	}

	method soplarCasa(casaDeMaterial) {
		if (pesoActual - casaDeMaterial.resistenciaTotal() > 0) {
			self.reducirPeso(casaDeMaterial.resistenciaTotal())
			casaDeMaterial.derrumbarse()
		}
	}

}

