/*
 **Melina** es una cadeta que trabaja para las otras clientas de la remisería. En cada momento trabaja para una clienta, se debe informar para quién.
 *  El precio por kilómetro pactado con Melina es 3 pesos menos que el precio de la clienta para quien esté trabajando en cada momento.

*/


object melina 
	{
		var clientaAReemplazar
		method clientaAReemplazar(newClienta)
			{
				if(self == newClienta) self.error("No se puede eemplazar a uno mismo")
				clientaAReemplazar = newClienta
			}
		method precioPorKm()
			{
				return clientaAReemplazar.precioPorKm() - 3
			}	
	}


object ludmila 
	{
		method precioPorKm ()
			{
				return 18
			}
	}

object anaMaria
	{
		var economicaMenteEstable = true
		method precioPorKm()
			{
				if (economicaMenteEstable)
					{
						return 30
					} 
				else 
					{
						return 25
					}
				
			}
		method economicaMenteEstable()
			{
				return economicaMenteEstable
			}
		method cambiarEstabilidadEconomica ()
			{
				economicaMenteEstable = !economicaMenteEstable
			}
	}
	



//- **Teresa**: arranca en 22 pesos el kilómetro, puede cambiar a cualquier otro valor.

object teresa
	{
		var precio = 22
		method precioPorKm()
			{
				return precio
			}
		method cambiarPrecio (nuevoPrecio)
			{
				precio = nuevoPrecio
			}
			
	}