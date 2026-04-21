import objetos.*
import personas.*

object bolichito {
    var objetoEnMostrador = remera
    var objetoEnVidriera = pelota

    method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
    method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
    
    method esBrillante() = objetoEnMostrador.material().esBrillante() and objetoEnVidriera.material().esBrillante()
    
    method esMonocromatico() = objetoEnMostrador.color() == objetoEnVidriera.color()
    
    method estaEquilibrado() = objetoEnMostrador.peso() > objetoEnVidriera.peso()
    
    method tieneObjetoDeColor(unColor) = objetoEnMostrador.color() == unColor or objetoEnVidriera.color() == unColor
    
    method puedeMejorar() = self.esMonocromatico() or not self.estaEquilibrado()
    
    method puedeOfrecerleAlgoA(persona) {
        return persona.leGusta(objetoEnMostrador) or persona.leGusta(objetoEnVidriera)
    }
}

















