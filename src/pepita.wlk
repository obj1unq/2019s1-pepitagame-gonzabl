import ciudades.*
import wollok.game.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property position = game.at(3,3)
	
	method image(){ 
		if(energia > 100){return "pepita-gorda-raw.png"}
			else{return "pepita.png"} // post calculo
	}

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {// dentro del parentesis escribir una funcion que puedeVolarHacia() y poner todas las validaciones.
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}else{ game.say(self, "Ya estoy en !")}// energiaNecesariaParaVolarHacia() es un metodo que usa energiaParaVolar() y move(nuevaPosicion)
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
	}	
	
	// mejor opcion
	/*method volaYCome(comida){
		self.come(comida)
		self.move(comida.posicion())
	}*/
}
