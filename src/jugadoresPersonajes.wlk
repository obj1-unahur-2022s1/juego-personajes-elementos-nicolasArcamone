object luisa {
  var personaje

method personajeActivo(unPersonaje){personaje = unPersonaje}

method aparece(elemento){ personaje.encontrar(elemento)}
}


object floki {
	var arma 
	
method encontrar(elemento){
 if(arma.estaCargada()){
  elemento.recibirAtaque(arma.nivelDePotencia())
  arma.registrarUso() 
}
}
method nuevaArma(unArma){arma = unArma}
}

object mario {
	var valorRecolectado = 0
    var ultimoEncontrado 


method encontrar(elemento){
   ultimoEncontrado = elemento
   valorRecolectado += elemento.otorgarValor()
   elemento.recibirTrabajo()	
 }
method valorRecolectado(){return valorRecolectado}
method esFeliz(){ return valorRecolectado >= 50 or ultimoEncontrado.altura() >= 10}
}

object ballesta{
   var flechas = 10

method registrarUso(){ flechas -= 1 }
method estaCargada(){ return flechas > 0}
method nivelDePotencia(){ return 4 }
method cantFlechas(){return flechas}
}

object jabalina{
  var cargada = true
 
method registrarUso(){ cargada = not cargada}
method estaCargada(){ return cargada}
method nivelDePotencia(){ return 30 }
}


object castillo{
   var nivel = 150
   	
method altura(){return 20}
method nivelDeDefensa(){ return nivel}
method recibirAtaque(potencia){ nivel -= potencia}
method otorgarValor(){  return nivel / 5}
method recibirTrabajo(){ nivel = 200.min(nivel + 20)}


}

object 	aurora{
   var estaViva = true	
	
method altura(){return 1}
method recibirAtaque(potencia){ estaViva = !(potencia >= 10)}
method estaConVida(){ return estaViva}
method recibirTrabajo(){return 0}
method otorgarValor(){return 15}	
}

object tipa{
  var mts  = 8

method altura(){return mts}	
method recibirAtaque(){return 0}
method recibirTrabajo(){mts = mts + 1}
method otorgarValor(){ return mts * 2}
}
	
	