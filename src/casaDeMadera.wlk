import casaDeLadrillo.*
import chanchito.*

object casaDeMadera {
	var resistencia = 5
	var cantidadDeChanchitosHabitantes = 1
	var cantidadDeChanchitosAMudar = 0
	
	method resistenciaTotal() = resistencia + (chanchito.pesoTotal() * cantidadDeChanchitosHabitantes)
	
	method recibirChanchitos(cantidad){
		cantidadDeChanchitosHabitantes += cantidad
	}
	
	method derrumbarse() {
		resistencia = 0
		cantidadDeChanchitosAMudar = cantidadDeChanchitosHabitantes
		cantidadDeChanchitosHabitantes = 0
		self.mudarHabitantesALaCasaDeLadrillo(cantidadDeChanchitosAMudar)
	}
	
	method mudarHabitantesALaCasaDeLadrillo(cantidad) {
		casaDeLadrillo.recibirChanchitos(cantidad)
	}
	
}
