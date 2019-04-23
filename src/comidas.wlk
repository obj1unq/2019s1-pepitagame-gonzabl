import wollok.game.*

object manzana {
	
	var position = game.at(5,1)
	
	method image() = "manzana.png"
	
	method energia() = 80
	
	method position(nuevaPosition){
		position = nuevaPosition
	} 
	
}

object alpiste {
	
	var position = game.at(5,5)
	
	method image() = "alpiste.png"
	
	method energia() = 5
	
	method position(nuevaPosition){
		position = nuevaPosition
	} 
}
