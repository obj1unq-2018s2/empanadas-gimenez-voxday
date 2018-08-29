object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var totalcobrado = 0
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo()
	{
		totalcobrado= totalcobrado + sueldo 
	}
	method totalCobrado(){
	 return totalcobrado
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	// var montoPorEmpanada = 15
	var dinero = 0
	var deuda = 0
	
	method totalDeudas(){
		return deuda
		}	
    method totalDinero(){
    	return dinero 
    }
    method gastar(cuanto){
    	if(cuanto > dinero){
    
    		deuda += cuanto -self.totalDinero()
    		dinero = 0
    	}
    	else {
    		dinero = dinero - cuanto
    		
    	} 
    
    		
    	}
    
    method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() {
		 return  15000 // cantidadEmpanadasVendidas * montoPorEmpanada
            }
        // dejo comentado el return de la etapa anterior 
            //  return "nada"
            
    method cobrarSueldo(){   
    if( self.sueldo() > self.totalDeudas() )
			{ 
				dinero += self.sueldo() - self.totalDeudas()
				deuda = 0
			}
			
			else{ 
				deuda -=  self.sueldo()
			    dinero = 0
			}
      
    }
}


// el metodo pagarA , se rompe debido a que el empleado baigorria, no entiende el metodo cobrar.sueldo
object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
	dinero =dinero - empleado.sueldo()
	empleado.cobrarSueldo()
	}
}
