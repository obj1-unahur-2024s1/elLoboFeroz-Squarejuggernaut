import feroz.*
import chanchito.*

object casaDeLadrillo {
	
	var resistencia = 25 * 2
	var cantidadDeChanchitosHabitantes = 1
	
	method resistenciaTotal() = resistencia + (chanchito.pesoTotal() * cantidadDeChanchitosHabitantes)
	
	method recibirChanchitos(cantidad){
		cantidadDeChanchitosHabitantes += cantidad
	}
	
	method derrumbarse() {
		resistencia = 0
		feroz.comer(cantidadDeChanchitosHabitantes, chanchito)
	}
}
