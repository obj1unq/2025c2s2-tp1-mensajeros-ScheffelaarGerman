//-- Paquete --//
object paquete {
  var property estaPago = true

  method puedeSerEntregadoPor(unMensajero, unDestino) {
    return self.estaPago() && unDestino.permiteIngreso(unMensajero)
  }
}

//-- Destinos --//
object puenteDeBrooklyn {
  method permiteIngreso(unMensajero) {
    return unMensajero.peso() <= 1000
  }
}

object laMatrix {
  method permiteIngreso(unMensajero) {
    return unMensajero.puedeLlamar()
  }
}

//-- Mensajeros --//
object jeanGray {
  const pesoPropio = 65
  method peso() { return pesoPropio }
  method puedeLlamar() { return true }   
}

object neo {
  const pesoPropio = 0
  var property puedeLlamar = true        
  method peso() { return pesoPropio }
}

object saraConnor {
  var property pesoPropio = 0
  var property vehiculo = moto
  method peso() { return self.pesoPropio() + self.vehiculo().peso() }
  method puedeLlamar() { return false }
}

//-- Vehículos --//
object moto {
  const pesoMoto = 100
  method peso() { return pesoMoto }
}

object camion {
  const PesoBase = 500
  const PesoAcoplado = 500
  var property cantidadDeAcoplados = 0
  method peso() { return PesoBase + PesoAcoplado * self.cantidadDeAcoplados() }
}

