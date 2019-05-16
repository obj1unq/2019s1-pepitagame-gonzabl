import wollok.game.*

object manzana {
	
	var property position = game.at(5,1)
	
	method image() = "manzana.png"
	
	method energia() = 80
	
	method colicionasteCon(alguien){
		
		alguien.guardarComida(self)
	}
	
	method chocasteCon(alguien){
		
		alguien.come(self)
	}
	
}

object alpiste {
	
	var property position = game.at(5,5)
	
	method image() = "alpiste.png"
	
	method energia() = 5
	
	method colicionasteCon(alguien){
		
		alguien.guardarComida(self)
	}
	
	method chocasteCon(alguien){
		
		alguien.come(self)
	}
	
}
