import wollok.game.*

class Manzana {
	
	var property position = game.at(5,1)
	
	method image() = "manzana.png"
	
	method energia() = 80
	
	method colicionasteCon(alguien){
		
	}
	
	method chocasteCon(ave){
		
		ave.come(self)
	}
	
}

class Alpiste {
	
	var property position = game.at(5,5)
	
	method image() = "alpiste.png"
	
	method energia() = 0.5 //* alguien.granos()
	
	method colicionasteCon(alguien){
		
	}
	
	method chocasteCon(ave){
		
		ave.come(self)
	}
	
}
