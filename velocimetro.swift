enum Velocidades : Int {
	case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120

	init (velocidadInicial : Velocidades) {
		self = velocidadInicial
	}
}

class Auto {
	var velocidad : Velocidades

	init () {
	    velocidad = Velocidades(velocidadInicial : .Apagado)
	}

	func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
		let actual : Int = velocidad.rawValue
		var velocidadEnCadena : String
		switch velocidad {
			case .Apagado :
			    velocidadEnCadena = "Apagado"
				velocidad = Velocidades(velocidadInicial : .VelocidadBaja)
			case .VelocidadBaja :
			    velocidadEnCadena = "Velocidad Baja"
				velocidad = Velocidades(velocidadInicial : .VelocidadMedia)
			case .VelocidadMedia :
			    velocidadEnCadena = "Velocidad Media"
				velocidad = Velocidades(velocidadInicial : .VelocidadAlta)
			case . VelocidadAlta :
			    velocidadEnCadena = "Velocidad Alta"
				velocidad = Velocidades(velocidadInicial : .VelocidadMedia)
		}

		return (actual, velocidadEnCadena)
	}
}

var automovil = Auto()

for index in 1...20 {
    var resultado = automovil.cambioDeVelocidad()
    print("\(index). \(resultado.actual) , \(resultado.velocidadEnCadena)")
    
}
