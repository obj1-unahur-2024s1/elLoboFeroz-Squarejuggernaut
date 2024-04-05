import caperucita.*
import abuela.*
import cazador.*

object feroz {
	const pesoInicial = 10
	var pesoActual = pesoInicial
	
	method estaSaludable() = pesoActual.between(20, 150)
	
	method pesoActual() = pesoActual
	
	method modificarPeso(unidades) {
		pesoActual = unidades
	}
	
	method sufrirCrisis() {
		pesoActual = pesoInicial
	}
	
	method comer(alimento) {
		pesoActual += alimento.pesoTotal() * 0.1
		alimento.reducirPesoANada()
	}
	
	method correrHacia(lugar) {
		pesoActual = (pesoActual - 1).max(0)
	}
}
