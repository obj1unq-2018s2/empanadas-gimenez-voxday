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
	var montoPorEmpanada = 15
	var dinero = 0
	var deuda = 0
	var gastos = 0
	
	method totalDeudas(){
		return deuda
		}	
    method totalDinero(){
    	return dinero 
    }
    method gastar(cuanto){
    	dinero = dinero - cuanto
    	if(cuanto > dinero){
    		deuda = deuda + (cuanto - dinero)
    	}
    }
    method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() {
		 return  15000 // cantidadEmpanadasVendidas * montoPorEmpanada
            }
        // dejo comentado el return de la etapa anterior     
    method cobrarSueldo(){
    //  return "nada"
       if(self.totalDeudas() > 0){
       deuda = self.totalDeudas() - self.sueldo()
       
       }
       if(self.totalDeudas() < self.sueldo())
       {
       	dinero = dinero + (self.sueldo() - self.totalDeudas() )
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
