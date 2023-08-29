import cliente.*


/*
 * 
 * - **Roxana** le cobra a cada cliente el precio por kilómetro que pactó con la cooperativa sin variaciones.
- **Gabriela** le aumenta un 20%, porque su auto de alta gama.
- **Mariela** no aplica recargo, pero establece un mínimo de 50 pesos el viaje.
- **Juana** por su parte, cobra 100 pesos hasta 8 kilómetros, y 200 pesos si son más de 8 kilómetros. A Juana no le importa lo que pactó la agencia, le cobra lo mismo a todos.
 * 
 * 
 * Se pide representar a las remiseras y a los clientes, de forma tal de poder preguntarle a una remisera cuánto le cobra a un determinado cliente por un viaje, del cual se indican los kilómetros.
P.ej. `roxana.precioViaje(ludmila,10)` debe devolver 180.
 
 - **Lucía** es una remisera que hace reemplazos, o sea, cubre los turnos que las otras remiseras se tienen que tomar por alguna razón.
Hay que informar a quién está reeemplazando Lucía.
Lucía cobra lo mismo que la remisera a la que está reemplazando.
 */
 
 object  lucia
 	{
 		var  remiseraAReemplazar 
 		method remiseraAReemplazar(newRemisera){
 			if(self == newRemisera) self.error("No se puede reemplazar a uno mismo")
 			remiseraAReemplazar = newRemisera
 		}
 		
 		
 		method precioViaje (cliente,km)		{
 			return 	remiseraAReemplazar.precioViaje(cliente,km)
 		}	
 	 
 	}
 
 
 object roxana
 	{
 		method precioViaje (cliente,km)
 			{
 				return cliente.precioPorKm() * km
 			}
 	}
 	
 	
 object garbiela 
 	{
 		method precioViaje (cliente,km)
 			{
 				return (cliente.precioPorKm() * km)*1.20
 			}
 	}
 
 
 object mariela
 	{
 		method precioViaje(cliente,km)
 			{
 				return 50.max(cliente.precioPorKm() * km)
 			}
 	}
 	
 object juana
 	{
 		method precioViaje (_,km)
 			{
 				if (km <= 8){100}else{ 200}
 				
 		   }
 	}