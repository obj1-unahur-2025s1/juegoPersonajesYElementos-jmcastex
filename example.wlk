object luisa {  
var personajeActivo =floki

method asignarPersonaje(personaje){
  personajeActivo=personaje
} 

method personajeActivo() =personajeActivo 

method aparece(elemento) {
  self.personajeActivo().encontrar(elemento)
}

}

object floki {
  var arma=ballesta

  method encontrar(elemento) {
    self.arma().disparar()
    elemento.recibirAtaque(self.arma().potencia())
    
  }

  method cambiarArma(nuevaArma) {
    arma=nuevaArma
  }
  method arma() =arma 
}


object mario {
   var valor =0 
   var ultimoElemento =tipa  
  
  method encontrar(elemento) {
    elemento.recibirTrabajo()
    valor+=elemento.otorgarValor()
    ultimoElemento=elemento
  }

  method esFeliz() = valor>50 or ultimoElemento.altura()>=10
}

object aurora {
  var estaViva =true 
  
  method recibirTrabajo() {

  } 

  method otorgarValor()=15

  method recibirAtaque(potencia) {
    estaViva= potencia < 10  
  }

  method altura() =1 

}


object tipa {
  var altura=8

  method altura() =altura 

  method recibirAtaque(potencia) {
    
  }

  method recibirTrabajo() {
    altura+=1
  } 

  method otorgarValor()=self.altura()*2


}

object castillo {
  var nivelDeDefensa =150 

  method nivelDeDefensa() =nivelDeDefensa 
  method altura() =20 

  method recibirAtaque(potencia) {
    nivelDeDefensa-=potencia
  }

  method recibirTrabajo() {
    nivelDeDefensa= [nivelDeDefensa+20,200].min()
  } 

  method otorgarValor()=nivelDeDefensa/5

}


object ballesta {
  var cantidadDeFlechas=10

  method estaCargada() {
    cantidadDeFlechas>0
  }

  method disparar() {
    cantidadDeFlechas-=1
  } 


  method potencia() = 4

}

object jabalina {
  var cantidadDeJabalinas=1

  method estaCargada() {
    cantidadDeJabalinas>0
  }
  method disparar() {
    cantidadDeJabalinas-=1
  } 
  method potencia() = 30
}





