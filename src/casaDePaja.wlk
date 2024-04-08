import casaDeMadera.*
import chanchito.*

object casaDePaja {
	var resistencia = 0
	var cantidadDeChanchitosHabitantes = 1
	var cantidadDeChanchitosAMudar = 0
	
	method resistenciaTotal() = resistencia + (chanchito.pesoTotal() * cantidadDeChanchitosHabitantes)
	
	method derrumbarse() {
		resistencia = 0
		cantidadDeChanchitosAMudar = cantidadDeChanchitosHabitantes
		cantidadDeChanchitosHabitantes = 0
		self.mudarHabitantesALaCasaDeMadera(cantidadDeChanchitosAMudar)
	}
	
	method mudarHabitantesALaCasaDeMadera(cantidad) {
		casaDeMadera.recibirChanchitos(cantidad)
	}
}
