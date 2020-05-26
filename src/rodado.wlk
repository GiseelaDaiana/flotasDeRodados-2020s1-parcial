
//Colores
object azul{}
object rojo{}
object baige{}
object verde{}
object blanco{}

//Rodados

class ChevroletCorsa {
	var colorDeAuto = ""
	method capacidad(){return 4}
	method velocidadMax() {return 150}
	method color() {return colorDeAuto}
	method peso(){return 1300}
	method colorElejido(color){
		colorDeAuto = color 
	}
}


class RenaultKwid {
	var tanqueAdicional = false 
	method capacidad(){
		if (tanqueAdicional) {
		    return 3
	    }else{
	    	return 4
	    }
		 
	}
	method velocidadMax() {
	    if (tanqueAdicional) {
		    return 120
	    }else{
	    	return 110
	    }
	}
	method color() { return azul}
	
	method peso(){
		var peso = 1200
		if (tanqueAdicional) {
		   peso = peso + 150
	    }
	    return (peso)
	}
	
	method combustible() { return "gas" }
	method tieneTanqueAdicional(){
		tanqueAdicional = true 
	}
}


class AutoEspecial {
	var capacidadDeAuto = 0
	var velocidadDeAuto = 0
	var colorDeAuto = ""
	var pesoDeAuto = 0
	method capacidad(){return capacidadDeAuto}
	method velocidadMax() {return velocidadDeAuto}
	method color() {return colorDeAuto}
	method peso(){ return pesoDeAuto}
	method indicarCapacidad(capacidad){
		capacidadDeAuto = capacidad
	}
	method indicarVelocidadMax(velocidad){
		velocidadDeAuto = velocidad
	}
	method indicarColor(color1){
		colorDeAuto = color1
	}
	method indicarPeso(peso){
		pesoDeAuto = peso
	}
}
