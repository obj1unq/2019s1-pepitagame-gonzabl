import ciudades.*
import comidas.*
import wollok.game.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 
	var amiga = null
	var property position = game.at(3,3)
	
	method image(){ 
		if(energia > 100){return "pepita-gorda-raw.png"}
			else{return "pepita.png"} // post calculo
	}

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	/*method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {// dentro del parentesis escribir una funcion que puedeVolarHacia() y poner todas las validaciones.
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}else{ game.say(self, "Ya estoy en !")}// energiaNecesariaParaVolarHacia() es un metodo que usa energiaParaVolar() y move(nuevaPosicion)
	}*/
	
	method volaHacia(unaCiudad){
		self.energiaNecesariaParaVolarHacia(unaCiudad)
	}
	
	method energiaNecesariaParaVolarHacia(unaCiudad){
		if(energia> 100){self.volar(unaCiudad)}else{game.say(self, "Dame de comer primero!")}
	}
	
	method volar(unaCiudad){
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}else{ game.say(self, "Ya estoy en !")}
	}
	
	method energiaParaVolar(distancia) = 15 + 5 * distancia


	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
	}
	
	method nuevaAmiga(ave) {
		if(amiga != ave){
		game.say(self, "¡Hola " + ave.nombre() + "!")
		amiga=ave
		}	
	}
	// mejor opcion
	method volaYCome(comida){
		self.come(comida)
		self.move(comida.position())
		game.removeVisual(comida)
	}
}

object pepona{
	method image() = "pepona.png"
	method position() = game.at(2,8) 
	method nombre() = "pepona"
}

object pipa{
	method image() = "pepitaCanchera.png"
	method position() = game.at(5,8)
	method nombre() = "pipa" 
}

object roque{
	var mochila = null
	
	var property position = game.at(4,3)
	
	method image() = "jugador.png"
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}
	
	method guardarComida(comida){
		if(null == mochila){
			mochila = comida
			game.removeVisual(mochila)
		}else{
			mochila.position(game.at(1.randomUpTo(8).truncate(0),1.randomUpTo(8).truncate(0)))
			mochila = comida
			game.removeVisual(comida)
		}
		 // ramdom es : game.at(1.randomUpTo(8).truncate(0),1.randomUpTo(8).truncate(0))
	}
	
	method alimentar(ave){
		
		ave.come(mochila)
	}
	
}