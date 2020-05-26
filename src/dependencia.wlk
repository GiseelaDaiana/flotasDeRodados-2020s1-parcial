import rodado.*
import trafic.*

class Dependencia {
	const flota = []
	var empleados = 0
	
	method cantidadDeEmpleados(cantidad){
		empleados = cantidad
	}
	
	method agregarAFlota(rodado){
		flota.add(rodado)
	}
	method  quitarDeFlota(rodado){
		flota.remove(rodado)
	}
	method  pesoTotalFlota() {
		return flota.sum({cosa => cosa.peso() })
	}
	method  estaBienEquipada() {
		return (flota.size() >= 3 and flota.all({cosa=> cosa.velocidadMax() >= 100}))
	}
	method  capacidadTotalEnColor(color) {
		return self.rodadosDeUnColor(color).sum({cosa => cosa.capacidad()})
	}
	method rodadosDeUnColor(color){
		return flota.filter({cosa => cosa.color() == color})
	}
	method colorDelRodadoMasRapido(){
		return flota.max({cosa => cosa.velocidadMax()}).color()
	}
	method capacidadDeLaFlota(){
		return flota.sum({cosa => cosa.capacidad()})
	}
	method capacidadFaltante(){ 
		return  (empleados - self.capacidadDeLaFlota())
	}
	method cantidadDeRodadosEnFlota(){
		return flota.size()
	}
	method esGrande(){
		return ((self.cantidadDeRodadosEnFlota()>= 5) and (empleados >= 40))
	}
}

