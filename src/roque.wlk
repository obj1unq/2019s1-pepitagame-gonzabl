import pepita.*
import wollok.game.*

object roque{
	var property cantidadGranos = 0
	
	var property position = game.at(4,3)
	
	method image() = "jugador.png"
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
		cantidadGranos ++
	}
	
	method chocasteCon(alguien){
		
		game.say(self, "Hola Pepita!")
	}
	
	method dejarComida(comida) {
		game.addVisualIn(comida, self.position())
		cantidadGranos = 0
	}
	
	
	// METODOS DE LA PARTE 2
	
	/*method guardarComida(comida){
		if(mochila == null){
			mochila = comida
			game.removeVisual(mochila)
		}else{
			game.addVisualIn(mochila, game.at(0.randomUpTo(9).truncate(0),0.randomUpTo(9).truncate(0)))
			mochila = comida
			game.removeVisual(comida)
			}
		}
			
	 method alimentar(ave){
		if (mochila != null) {
			ave.come(mochila)
			game.addVisualIn(mochila, game.at(0.randomUpTo(9).truncate(0),0.randomUpTo(9).truncate(0)))
			mochila = null			
		}
	 }
	 */
}