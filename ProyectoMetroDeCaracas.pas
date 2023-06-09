program MetrodeCaracas;
uses crt;
var nombre, apellido, cedula: string[80];
x, y, z, linea1, linea2,cantboletos, tipoviaje, subestacion, subestdestino, tipoboleto, money, montofinal, ultmenu, clave: integer;
p:boolean;
label 
		Prueba;
begin	
Prueba:
clrscr;
		writeln ('');
		writeln ('   Te doy la bienvenida al Metro de Caracas.');
		writeln ('       Desea adquirir algun boleto?');
		writeln ('');
		writeln ('        1: SI');
		writeln ('        2: NO');
		readln (x); 
				while (x <> 1) and (x <> 2) do
				begin
				clrscr;
				writeln ('Dato invalido. Intente de nuevo.');
				writeln ('');
				writeln ('       Desea adquirir algun boleto?');
				writeln ('');
				writeln ('        1: SI');
				writeln ('        2: NO');
				readln (x); 
				end;
					case x of
						2:begin
						clrscr;
						writeln ('A sido un placer. Vuelva pronto.');
						exit;
						end;
							1: begin
							clrscr;
							writeln ('Para proceder con su cotizacion, le vamos a pedir que nos otorgue los siguientes datos.');
							writeln ('    NOMBRE:');
							readln (nombre);
							writeln ('    APELLIDO:');
							readln (apellido);
							writeln ('    CEDULA DE IDENTIDAD:');
							readln (cedula);
							clrscr;
							writeln ('Para proseguir con su cotizacion, por favor, confirmar la validacion de sus datos.');
							writeln ();
							writeln ('Nombre: ',nombre);
							writeln ('Apellido: ',apellido);
							writeln ('Cedula: ',cedula);
							writeln ();
							writeln ('Presione 1 si todo es correcto.');
							writeln ('Presione 2 si existe un error y desea corregir.');
							readln (y);
										while (y <> 1) and (y <> 2) do
										begin
										clrscr;
										writeln ('Dato invalido. Intente de nuevo.');
										writeln ('         NOMBRE:');
										readln (nombre);
										writeln ('         APELLIDO:');
										readln (apellido);
										writeln ('         CEDULA DE IDENTIDAD.');
										readln (cedula);
										clrscr;
										writeln ('Para proseguir con su cotizacion, por favor, confirmar la validacion de sus datos.');
										writeln	();
										writeln ('Nombre: ',nombre);
										writeln ('Apellido: ',apellido);
										writeln ('Cedula: ',cedula);
										writeln ();
										writeln ('Presione 1 si todo es correcto.');
										writeln ('Presione 2 si existe un error y desea corregir.');
										readln (y);
										end;
												while y = 2 do 
												begin
												clrscr;
												writeln ('         NOMBRE:');
												readln (nombre);
												writeln ('         APELLIDO:');
												readln (apellido);
												writeln ('         CEDULA DE IDENTIDAD.');
												readln (cedula);
												clrscr;
												writeln ('Para proseguir con su cotizacion, por favor, confirmar la validacion de sus datos.');
												writeln	();
												writeln ('Nombre: ',nombre);
												writeln ('Apellido: ',apellido);
												writeln ('Cedula: ',cedula);
												writeln ();
												writeln ('Presione 1 si todo es correcto.');
												writeln ('Presione 2 si existe un error y desea corregir.');
												readln (y);
												end;
														if y = 1 then
														begin
														clrscr;
														writeln ('Por favor, indique la cantidad de boletos que desea comprar.');
														readln (cantboletos);
														writeln ('');
														clrscr;	
														writeln ('');
														writeln ('');													
														writeln ('        Genial! Por favor, chequee los tipos de boleto disponibles');
														writeln ('');
														writeln ('');
														writeln ('');														
														writeln ('     _____________________________________________________________________');
														writeln ('    |                 |                    |                              |');
														writeln ('    |    Boletos      |       Color        |          Cobertura           |');
														writeln ('    |_________________|____________________|______________________________|');
														writeln ('    |                 |                    |                              |');
														writeln ('    | 1)  Simple      |     Amarillo       |      1 viaje en metro        |');
														writeln ('    |_________________|____________________|______________________________|');
														writeln ('    |                 |                    |      1 viaje en metro        |');
														writeln ('    | 2) Integrado    |     Amarillo       |      1 viaje en metrobus     |');
														writeln ('    |_________________|____________________|______________________________|');
														writeln ('    |                 |                    |                              |');
														writeln ('    | 3)Ida y vuelta  |     Amarillo       |      2 viajes en metro       |');
														writeln ('    |_________________|____________________|______________________________|');
														writeln ('    |                 |                    |                              |');
														writeln ('    | 4)Ida y vuelta  |     Amarillo       |     2 viajes en metro        |');
														writeln ('    |   integrado     |                    |     2 viajes en metrobus     |');
														writeln ('    |_________________|____________________|______________________________|');
														writeln ('    |               Presione 0 para ver las demas opciones.               |');
														writeln ('    |_____________________________________________________________________|');
														p := true;
														repeat
														readln (z);																												
														if z <> 0 then
														begin
														p := false;
														Writeln('Presione 0 para ver las demas opciones');																											
														end
														else if (z = 0) then 
														begin
														p := true;
																	writeln ('     _____________________________________________________________________');
																	writeln ('    |                 |                    |                              |');
																	writeln ('    | 5) MultiAbono   |      Naranja       |      10 viajes en metro      |');
																	writeln ('    |_________________|____________________|______________________________|');
																	writeln ('    |                 |                    |                              |');
																	writeln ('    | 6) MultiAbono   |      Naranja       |     10 viajes en metro       |');
																	writeln ('    |    integrado    |                    |     10 viajes en metrobus    |');
																	writeln ('    |_________________|____________________|______________________________|');
																	writeln ('    |                 |                    |                              |');
																	writeln ('    | 7) Estudiantil  |        Azul        |      10 viajes en metro      |');
																	writeln ('    |      Simple     |                    |                              |');
																	writeln ('    |_________________|____________________|______________________________|');
																	writeln ('    |                 |                    |                              |');
																	writeln ('    | 8) Estudiantil  |        Azul        |     10 viajes en metro       |');
																	writeln ('    |    Integrado    |                    |     20 viajes en metrobus    |');
																	writeln ('    |_________________|____________________|______________________________|');
																	writeln ('    |                 |                    |                              |');
																	writeln ('    |                 |                    |           20 viajes          |');
																	writeln ('    | 9)MetroTarjeta  |        Rojo        |           30 viajes          |');
																	writeln ('    |                 |                    |           40 viajes          |');
																	writeln ('    |_________________|____________________|______________________________|');
																	writeln ('    |                 |                    |                              |');
																	writeln ('    | 10)MetroTarjeta |                    | 20 viajes (Metro y Metrobus) |');
																	writeln ('    |    Integrada    |        Rojo        | 30 viajes (Metro y Metrobus) |');
																	writeln ('    |                 |                    | 40 viajes (Metro y Metrobus) |');
																	writeln ('    |_________________|____________________|______________________________|');
																	writeln ();	
																	writeln ();
																	writeln ('     Seleccione el numero correspondiente al tipo de boleto que desea comprar');	
																	writeln ();													
																	end;
																	until p=true;																
																	readln (tipoboleto);
																	writeln ('El monto total es: $',cantboletos*tipoboleto*10);
																				while (tipoboleto <> 0) and (tipoboleto <> 1) and (tipoboleto <> 2) and (tipoboleto <> 3) and (tipoboleto <> 4) and (tipoboleto <> 5) and (tipoboleto <> 6) and (tipoboleto <> 7) and (tipoboleto <> 8) and (tipoboleto <> 9) and (tipoboleto <> 10) do
																						begin
																						clrscr;
																						writeln ('Dato invalido. Intente de nuevo.');
																						writeln ('');
																						writeln ('');
																						writeln ('');
																						writeln ('     _____________________________________________________________________');
																						writeln ('    |                 |                    |                              |');
																						writeln ('    |    Boletos      |       Color        |          Cobertura           |');
																						writeln ('    |_________________|____________________|______________________________|');
																						writeln ('    |                 |                    |                              |');
																						writeln ('    | 1)  Simple      |     Amarillo       |      1 viaje en metro        |');
																						writeln ('    |_________________|____________________|______________________________|');
																						writeln ('    |                 |                    |      1 viaje en metro        |');
																						writeln ('    | 2) Integrado    |     Amarillo       |      1 viaje en metrobus     |');
																						writeln ('    |_________________|____________________|______________________________|');
																						writeln ('    |                 |                    |                              |');
																						writeln ('    | 3)Ida y vuelta  |     Amarillo       |      2 viajes en metro       |');
																						writeln ('    |_________________|____________________|______________________________|');
																						writeln ('    |                 |                    |                              |');
																						writeln ('    | 4)Ida y vuelta  |     Amarillo       |     2 viajes en metro        |');
																						writeln ('    |   integrado     |                    |     2 viajes en metrobus     |');
																						writeln ('    |_________________|____________________|______________________________|');
																						writeln ('    |                 |                    |                              |');
																						writeln ('    | 5) MultiAbono   |        Verde       |      10 viajes en metro      |');
																						writeln ('    |_________________|____________________|______________________________|');
																						writeln ('    |                 |                    |                              |');
																						writeln ('    | 6) MultiAbono   |        Verde       |     10 viajes en metro       |');
																						writeln ('    |    integrado    |                    |     10 viajes en metrobus    |');
																						writeln ('    |_________________|____________________|______________________________|');
																						writeln ('    |                 |                    |                              |');
																						writeln ('    | 7) Estudiantil  |        Azul        |      10 viajes en metro      |');
																						writeln ('    |      Simple     |                    |                              |');
																						writeln ('    |_________________|____________________|______________________________|');
																						writeln ('    |                 |                    |                              |');
																						writeln ('    | 8) Estudiantil  |        Azul        |     10 viajes en metro       |');
																						writeln ('    |    Integrado    |                    |     20 viajes en metrobus    |');
																						writeln ('    |_________________|____________________|______________________________|');
																						writeln ('    |                 |                    |                              |');
																						writeln ('    |                 |                    |      20 viajes en metro      |');
																						writeln ('    | 9)MetroTarjeta  |        Rojo        |      30 viajes en metro      |');
																						writeln ('    |                 |                    |      40 viajes en metro      |');
																						writeln ('    |_________________|____________________|______________________________|');
																						writeln ('    |                 |                    |                              |');
																						writeln ('    | 10)MetroTarjeta |                    | 20 viajes (Metro y Metrobus) |');
																						writeln ('    |    Integrada    |        Rojo        | 30 viajes (Metro y Metrobus) |');
																						writeln ('    |                 |                    | 40 viajes (Metro y Metrobus) |');
																						writeln ('    |_________________|____________________|______________________________|');
																						writeln ();
																						readln (tipoboleto);
																						writeln ('El boleto seleccionado es: ',tipoboleto);
																						writeln ();
																						writeln ('El monto total es: $',cantboletos*tipoboleto+20);
																					
																						end;
																								clrscr;
																								if (tipoboleto mod 2 = 0) then
																								begin
																								writeln ('');
																								writeln ('El monto total es: $',cantboletos*tipoboleto*10);
																								writeln ('');
																								writeln ('Por favor, describa el tipo de viaje que desea realizar.');
																								writeln ('');
																								writeln ('OPCION 01: Viaje en metro.');
																								writeln ('OPCION 02: Viaje en metrobus.');
																								readln (tipoviaje);		
																												while (tipoviaje <> 1) and (tipoviaje <> 2) do
																												begin
																												clrscr;
																												writeln ('Dato invalido. Intente de nuevo.');
																												writeln ('');
																												writeln ('');
																												writeln ('Por favor, describa el tipo de viaje que desea realizar.');
																												writeln ('');
																												writeln ('OPCION 01: Viaje en metro.');
																												writeln ('OPCION 02: Viaje en metrobus.');
																												readln (tipoviaje);																												
																												end;
																												end
																							else
																							begin
																							tipoviaje:=1;
																							end;
																																																										
																				case tipoviaje of
																					1: begin
																					writeln ('El monto total es: $',cantboletos*tipoboleto*10);
																					writeln ('');
																					writeln ('Por favor seleccione la linea en la que desea viajar');
																					writeln ('');
																					writeln ('');
																					writeln ('');
																					writeln ('     _______');
																					writeln ('    |LINEA 1|_______________________________________________________________________________________ ');
																					writeln ('    | - Propatria                   | - Parque Carabobo             | - Altamira                    |');          
																					writeln ('    | - Perez Bonalde               | - Bellas Artes                | - Miranda                     |');
																					writeln ('    | - Plaza Zucre                 | - Colegio de Ingenieros       | - Los Dos Caminos             |');
																					writeln ('    | - Gato Negro                  | - Plaza Venezuela             | - Los Cortijos                |');
																					writeln ('    | - Agua Salud                  | - Sabana Grande               | - La California               |');
																					writeln ('    | - Cabo Amarillo               | - Chacaito                    | - Petare                      |');
																					writeln ('    | - Capitolio                   | - Chacao                      | - Palo Verde                  |');
																					writeln ('    | - La Hoyada                   |                               |                               |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('     _______');																				
																					writeln ('    |LINEA 2|_______________________________________________________________________________________ ');
																					writeln ('    | - El silencio                 | - La Paz                      | - Mamera                      |');          
																					writeln ('    | - Capuchinos                  | - La Yaguara                  | - Caricuao                    |');
																					writeln ('    | - Maternidad                  | - Carapita                    | - Zoologico                   |');
																					writeln ('    | - Artiguas                    | - Antimano                    | - Luis Pineda / Las adjuntas  |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('     _______');
																					writeln ('    |LINEA 3|_______________________________________________________________________________________ ');
																					writeln ('    | - Plaza Venezuela             | - La Bandera                  | - Coche                       |');          
																					writeln ('    | - Ciudad Universitaria        | - El Valle                    | - Mercado                     |');
																					writeln ('    | - Los Simbolos                | - Los Jardines                | - La Rinconada                |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('    |                          Presione 0 para ir a la siguiente pagina.                            |');
														                            writeln ('    |_______________________________________________________________________________________________|');		
																					readln (linea1);
																					if linea1 = 0 then
																					begin
																					writeln ('     _______');
																					writeln ('    |LINEA 4|_______________________________________________________________________________________ ');
																					writeln ('    | - Zona Rental                 | - Materniadad                 | - Antimano                    |');          
																					writeln ('    | - Parque Central              | - Artigas                     | - Mamera                      |');
																					writeln ('    | - Nuevo Circo                 | - La Paz                      | - Luis Pineda / Las adjuntas  |');
																					writeln ('    | - Teatros                     | - La Yaguara                  |                               |');
																					writeln ('    | - Capuchino                   | - Carapita                    |                               |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('    |LINEA 5|_______________________________________________________________________________________ ');
																					writeln ('    | - Bello Monte                 | - Bello Campo                 | - Boleita                     |');          
																					writeln ('    | - Las Mercedes                | - Hugo Chavez                 | - El Marquez                  |');
																					writeln ('    | - Parque Simon Bolivar        | - Montecristo                 | - Warairarepano               |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('     _______');
																					writeln ('    |LINEA 6|_______________________________________________________');
																					writeln ('    | - Zoologico                   | - La Rinconada                |'); 
																					writeln ('    |_______________________________|_______________________________|');
																					writeln ('     _______');
																					writeln ('    |LINEA 7|_______________________________________________________________________________________ ');
																					writeln ('    | - Las Flores                  | - El Cristo                   | - Roosevelt                   |');          
																					writeln ('    | - Panteon                     | - Roca Tarpeya                | - La Bandera                  |');
																					writeln ('    | - Socorro                     | - Presidente Medina           | - Los Ilustres                |');
																					writeln ('    | - La Hoyada                   | - INCES                       |                               |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('     ___________');
																					writeln ('    |CLABETREN 8|_____________________________________________________________________________________ ');
																					writeln ('    | - Petare 2                    | - 5 de Julio                  | - Warairarepano               |');          
																					writeln ('    | - 19 de Abril                 | - 24 de Julio                 |                               |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');																			writeln ();
																					readln (linea1);
																					clrscr;
																					writeln ('La linea que seleccionada es: ',linea1);
																					end;
																					while (linea1 <> 1) and (linea1 <> 2) and (linea1 <> 4) and (linea1 <> 3) and (linea1 <> 4) and (linea1 <> 5) and (linea1 <> 6) and (linea1 <> 7) and (linea1 <> 8) do
																					begin
																					writeln ('Dato invalido.');
																					writeln ('');
																					writeln ('Por favor seleccione la linea en la que desea viajar');
																					writeln ('');
																					writeln ('');
																					writeln ('');
																					writeln ('     _______');
																					writeln ('    |LINEA 1|_______________________________________________________________________________________ ');
																					writeln ('    | - Propatria                   | - Parque Carabobo             | - Altamira                    |');          
																					writeln ('    | - Perez Bonalde               | - Bellas Artes                | - Miranda                     |');
																					writeln ('    | - Plaza Zucre                 | - Colegio de Ingenieros       | - Los Dos Caminos             |');
																					writeln ('    | - Gato Negro                  | - Plaza Venezuela             | - Los Cortijos                |');
																					writeln ('    | - Agua Salud                  | - Sabana Grande               | - La California               |');
																					writeln ('    | - Cabo Amarillo               | - Chacaito                    | - Petare                      |');
																					writeln ('    | - Capitolio                   | - Chacao                      | - Palo Verde                  |');
																					writeln ('    | - La Hoyada                   |                               |                               |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('     _______');																				
																					writeln ('    |LINEA 2|_______________________________________________________________________________________ ');
																					writeln ('    | - El silencio                 | - La Paz                      | - Mamera                      |');          
																					writeln ('    | - Capuchinos                  | - La Yaguara                  | - Caricuao                    |');
																					writeln ('    | - Maternidad                  | - Carapita                    | - Zoologico                   |');
																					writeln ('    | - Artiguas                    | - Antimano                    | - Luis Pineda / Las adjuntas  |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('     _______');
																					writeln ('    |LINEA 3|_______________________________________________________________________________________ ');
																					writeln ('    | - Plaza Venezuela             | - La Bandera                  | - Coche                       |');          
																					writeln ('    | - Ciudad Universitaria        | - El Valle                    | - Mercado                     |');
																					writeln ('    | - Los Simbolos                | - Los Jardines                | - La Rinconada                |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('    |                          Presione 0 para ir a la siguiente pagina.                            |');
														                            writeln ('    |_______________________________________________________________________________________________|');		
																					readln (linea1);
																					if linea1 = 0 then
																					begin
																					writeln ('     _______');
																					writeln ('    |LINEA 4|_______________________________________________________________________________________ ');
																					writeln ('    | - Zona Rental                 | - Materniadad                 | - Antimano                    |');          
																					writeln ('    | - Parque Central              | - Artigas                     | - Mamera                      |');
																					writeln ('    | - Nuevo Circo                 | - La Paz                      | - Luis Pineda / Las adjuntas  |');
																					writeln ('    | - Teatros                     | - La Yaguara                  |                               |');
																					writeln ('    | - Capuchino                   | - Carapita                    |                               |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('    |LINEA 5|_______________________________________________________________________________________ ');
																					writeln ('    | - Bello Monte                 | - Bello Campo                 | - Boleita                     |');          
																					writeln ('    | - Las Mercedes                | - Hugo Chavez                 | - El Marquez                  |');
																					writeln ('    | - Parque Simon Bolivar        | - Montecristo                 | - Warairarepano               |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('     _______');
																					writeln ('    |LINEA 6|_______________________________________________________');
																					writeln ('    | - Zoologico                   | - La Rinconada                |'); 
																					writeln ('    |_______________________________|_______________________________|');
																					writeln ('     _______');
																					writeln ('    |LINEA 7|_______________________________________________________________________________________ ');
																					writeln ('    | - Las Flores                  | - El Cristo                   | - Roosevelt                   |');          
																					writeln ('    | - Panteon                     | - Roca Tarpeya                | - La Bandera                  |');
																					writeln ('    | - Socorro                     | - Presidente Medina           | - Los Ilustres                |');
																					writeln ('    | - La Hoyada                   | - INCES                       |                               |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');
																					writeln ('     ___________');
																					writeln ('    |CLABETREN 8|_____________________________________________________________________________________ ');
																					writeln ('    | - Petare 2                    | - 5 de Julio                  | - Warairarepano               |');          
																					writeln ('    | - 19 de Abril                 | - 24 de Julio                 |                               |');
																					writeln ('    |_______________________________|_______________________________|_______________________________|');																			writeln ();
																					readln (linea1);
																					clrscr;
																					writeln ('La linea que seleccionada es: ',linea1);
																					end;
																					end;
																					if linea1 = 1 then
																					begin
																				    writeln ();
																					writeln ('Por favor, seleccione la sub estacion de salida.');
																					writeln ();
																					writeln ('     _______');
																					writeln ('    |LINEA 1|_________________________________________________________________________________________ ');
																					writeln ('    | -01: Propatria                | -09: Parque Carabobo         | -16: Altamira                    |');          
																					writeln ('    | -02: Perez Bonalde            | -10: Bellas Artes            | -17: Miranda                     |');
																					writeln ('    | -03: Plaza Zucre              | -11: Colegio de Ingenieros   | -18: Los Dos Caminos             |');
																					writeln ('    | -04: Gato Negro               | -12: Plaza Venezuela         | -19: Los Cortijos                |');
																					writeln ('    | -05: Agua Salud               | -13: Sabana Grande           | -20: La California               |');
																					writeln ('    | -06: Cabo Amarillo            | -14: Chacaito                | -21: Petare                      |');
																					writeln ('    | -07: Capitolio                | -15: Chacao                  | -22: Palo Verde                  |');
																					writeln ('    | -08: La Hoyada                |                              |                                  |');
																					writeln ('    |_______________________________|______________________________|__________________________________|');
																					
																					readln (subestacion);
																					clrscr;
																					writeln ();
																					writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																					writeln ();
																					writeln ();
																					writeln ('Ahora, por favor seleccione la sub estacion destino.');
																					writeln ();
																					writeln ('     _______');
																					writeln ('    |LINEA 1|_________________________________________________________________________________________ ');
																					writeln ('    | -01: Propatria                | -09: Parque Carabobo         | -16: Altamira                    |');          
																					writeln ('    | -02: Perez Bonalde            | -10: Bellas Artes            | -17: Miranda                     |');
																					writeln ('    | -03: Plaza Zucre              | -11: Colegio de Ingenieros   | -18: Los Dos Caminos             |');
																					writeln ('    | -04: Gato Negro               | -12: Plaza Venezuela         | -19: Los Cortijos                |');
																					writeln ('    | -05: Agua Salud               | -13: Sabana Grande           | -20: La California               |');
																					writeln ('    | -06: Cabo Amarillo            | -14: Chacaito                | -21: Petare                      |');
																					writeln ('    | -07: Capitolio                | -15: Chacao                  | -22: Palo Verde                  |');
																					writeln ('    | -08: La Hoyada                |                              |                                  |');
																					writeln ('    |_______________________________|______________________________|__________________________________|');
																					writeln ();
																					readln (subestdestino);
																					writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																					writeln ();
																							clrscr;
																							textcolor(LightMagenta);																							
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METRO');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																									if z = 1 then
																									begin
																									writeln ();
																									writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																									writeln ();
																									writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																									exit;
																									end;
																									if z = 0 then
																									begin
																									clrscr;
																									writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																									writeln ();
																									writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																									readln (money);
																									writeln ();
																									montofinal:=cantboletos*tipoboleto*10
																									end;
																									if montofinal - money < 0 then
																									begin
																									writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																									writeln ('Su vuelto es: $',montofinal-money);
																									end;
																									while montofinal - money > 0 do
																									begin
																									writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																									readln (money);
																									end;
																									if montofinal - money = 0 then
																									begin
																									writeln ('Hemos recibido su pago.');
																									end;	
																									clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;																										
																										
																											end;
																										
																										
																							
																										
																									
																									
																					if linea1 = 2 then
																					begin
																					writeln ();
																					writeln ('Por favor, seleccione la sub estacion de salida.');
																					writeln ();
																					writeln ('     _______');	
																					writeln ('    |LINEA 2|________________________________________________________________________________________________ ');
																					writeln ('    | -01: El silencio                 | -05: La Paz                      | -09:  Mamera                     |');          
																					writeln ('    | -02: Capuchinos                  | -06: La Yaguara                  | -10: Caricuao                    |');
																					writeln ('    | -03: Maternidad                  | -07: Carapita                    | -11: Zoologico                   |');
																					writeln ('    | -04: Artiguas                    | -08: Antimano                    | -12: Luis Pineda / Las adjuntas  |');
																					writeln ('    |__________________________________|__________________________________|__________________________________|');
																					readln (subestacion);
																					clrscr;
																					writeln ();
																					writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																					writeln ();
																					writeln ();
																					writeln ('Ahora, por favor seleccione la sub estacion destino.');
																					writeln ();
																					writeln ('     _______');
																					writeln ('    |LINEA 2|________________________________________________________________________________________________ ');
																					writeln ('    | -01: El silencio                 | -05: La Paz                      | -09:  Mamera                     |');          
																					writeln ('    | -02: Capuchinos                  | -06: La Yaguara                  | -10: Caricuao                    |');
																					writeln ('    | -03: Maternidad                  | -07: Carapita                    | -11: Zoologico                   |');
																					writeln ('    | -04: Artiguas                    | -08: Antimano                    | -12: Luis Pineda / Las adjuntas  |');
																					writeln ('    |__________________________________|__________________________________|__________________________________|');
																					
																					readln (subestdestino);
																					writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																					writeln ();
																							clrscr;
																							textcolor(Magenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METRO');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																									if z = 1 then
																									begin
																									writeln ();
																									writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																									writeln ();
																									writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																									exit;
																									end;
																									if z = 0 then
																									begin
																									clrscr;
																									writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																									writeln ();
																									writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																									readln (money);
																									writeln ();
																									montofinal:=cantboletos*tipoboleto*10
																									end;
																									if montofinal - money < 0 then
																									begin
																									writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																									writeln ('Su vuelto es: $',montofinal-money);
																									end;
																									while montofinal - money > 0 do
																									begin
																									writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																									readln (money);
																									end;
																									if montofinal - money = 0 then
																									begin
																									writeln ('Hemos recibido su pago.');
																									end;	
																									clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;							
																									end;
																							if linea1 = 3 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 3|______________________________________________________________________________________________ ');
																							writeln ('    | -01: Plaza Venezuela             | -04: La Bandera                  | -07: Coche                     |');          
																							writeln ('    | -02: Ciudad Universitaria        | -05: El Valle                    | -08: Mercado                   |');
																							writeln ('    | -03: Los Simbolos                | -06: Los Jardines                | -09: La Rinconada              |');
																							writeln ('    |__________________________________|__________________________________|________________________________|');
																							
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																							writeln ();
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 3|________________________________________________________________________________________________ ');
																							writeln ('    | -01: Plaza Venezuela             | -04: La Bandera                  | -07: Coche                       |');          
																							writeln ('    | -02: Ciudad Universitaria        | -05: El Valle                    | -08: Mercado                     |');
																							writeln ('    | -03: Los Simbolos                | -06: Los Jardines                | -09: La Rinconada                |');
																							writeln ('    |__________________________________|__________________________________|__________________________________|');
																							
																							readln (subestdestino);
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METRO');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																							if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																						    begin
																						    writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																							while montofinal - money > 0 do
																							begin
																							writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																					    	if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																						    end;	
																						    clrscr;
																						    writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																					    	clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;							
																							end;
																							if linea1 = 4 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 4|_________________________________________________________________________________________________ ');
																							writeln ('    | -01: Zona Rental                 | -06: Materniadad                 | -11: Antimano                     |');          
																							writeln ('    | -02: Parque Central              | -07: Artigas                     | -12: Mamera                       |');
																							writeln ('    | -03: Nuevo Circo                 | -08: La Paz                      | -13: Luis Pineda / Las adjuntas   |');
																							writeln ('    | -04: Teatros                     | -09: La Yaguara                  |                                   |');
																							writeln ('    | -05: Capuchino                   | -10: Carapita                    |                                   |');
																							writeln ('    |__________________________________|__________________________________|___________________________________|');
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																							writeln ();
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 4|_________________________________________________________________________________________________ ');
																							writeln ('    | -01: Zona Rental                 | -06: Materniadad                 | -11: Antimano                     |');          
																							writeln ('    | -02: Parque Central              | -07: Artigas                     | -12: Mamera                       |');
																							writeln ('    | -03: Nuevo Circo                 | -08: La Paz                      | -13: Luis Pineda / Las adjuntas   |');
																							writeln ('    | -04: Teatros                     | -09: La Yaguara                  |                                   |');
																							writeln ('    | -05: Capuchino                   | -10: Carapita                    |                                   |');
																							writeln ('    |__________________________________|__________________________________|___________________________________|');
																							
																							readln (subestdestino);
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METRO');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;	
																							end;
																							if linea1 = 5 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 5|________________________________________________________________________________________________ ');
																							writeln ('    | -01: Bello Monte                 | -04: Bello Campo                 | -07: Boleita                     |');          
																							writeln ('    | -02: Las Mercedes                | -05: Hugo Chavez                 | -08: El Marquez                  |');
																							writeln ('    | -03: Parque Simon Bolivar        | -06: Montecristo                 | -09: Warairarepano               |');
																							writeln ('    |__________________________________|__________________________________|__________________________________|');
																							
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																							writeln ();
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 5|________________________________________________________________________________________________ ');
																							writeln ('    | -01: Bello Monte                 | -04: Bello Campo                 | -07: Boleita                     |');          
																							writeln ('    | -02: Las Mercedes                | -05: Hugo Chavez                 | -08: El Marquez                  |');
																							writeln ('    | -03: Parque Simon Bolivar        | -06: Montecristo                 | -09: Warairarepano               |');
																							writeln ('    |__________________________________|__________________________________|__________________________________|');
																							
																							readln (subestdestino);
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METRO');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;							
																							end;						
																							
																							if linea1 = 6 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 6|________________________________________________________');
																							writeln ('    | -01: Zoologico                   | -02: La Rinconada           |'); 
																							writeln ('    |__________________________________|_____________________________|');
																							
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion);
																							writeln ();
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 6|________________________________________________________');
																							writeln ('    | -01: Zoologico                   | -02: La Rinconada           |'); 
																							writeln ('    |__________________________________|_____________________________|');
																							
																							writeln();
																							readln (subestdestino);
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METRO');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;											
																							end;
																							if linea1 = 7 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 7|_____________________________________________________________________________________________ ');
																							writeln ('    | -01: Las Flores                  | -05: El Cristo                   | -09: Roosevelt                |');          
																							writeln ('    | -02: Panteon                     | -06: Roca Tarpeya                | -10: La Bandera               |');
																							writeln ('    | -03: Socorro                     | -07: Presidente Medina           | -11: Los Ilustres             |');
																							writeln ('    | -04: La Hoyada                   | -08: INCES                       |                               |');
																							writeln ('    |__________________________________|__________________________________|_______________________________|');
																							
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion);
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 7|_____________________________________________________________________________________________ ');
																							writeln ('    | -01: Las Flores                  | -05: El Cristo                   | -09: Roosevelt                |');          
																							writeln ('    | -02: Panteon                     | -06: Roca Tarpeya                | -10: La Bandera               |');
																							writeln ('    | -03: Socorro                     | -07: Presidente Medina           | -11: Los Ilustres             |');
																							writeln ('    | -04: La Hoyada                   | -08: INCES                       |                               |');
																							writeln ('    |__________________________________|__________________________________|_______________________________|');
																							
																							readln (subestdestino);
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METRO');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																						    writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;							
																							end;
																							if linea1 = 8 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |CLABETREN 8|_________________________________________________________________________________________ ');
																							writeln ('    | -01: Petare 2                    | -03: 5 de Julio                  | -05: Warairarepano            |');          
																							writeln ('    | -02: 19 de Abril                 | -04: 24 de Julio                 |                               |');
																							writeln ('    |__________________________________|__________________________________|_______________________________|');
																							writeln ();
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ('     ___________');
																							writeln ('    |CLABETREN 8|_________________________________________________________________________________________ ');
																							writeln ('    | -01: Petare 2                    | -03: 5 de Julio                  | -05: Warairarepano            |');          
																							writeln ('    | -02: 19 de Abril                 | -04: 24 de Julio                 |                               |');
																							writeln ('    |__________________________________|__________________________________|_______________________________|');
																							writeln ();
																							readln (subestdestino);
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METRO');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;								
																							end;
																							end;
																							
																							
																							2: begin
																							writeln ('El monto total es: $',cantboletos*tipoboleto*10);
																							writeln ('');
																							writeln ('Por favor seleccione la linea en la que desea viajar');
																							writeln ('');
																							writeln ('');
																							writeln ('');
																							writeln ('     _______');
																							writeln ('    |LINEA 1|_______________________________________________________________________________________ ');
																							writeln ('    | - Propatria                   | - Parque Carabobo             | - Altamira                    |');          
																							writeln ('    | - Perez Bonalde               | - Bellas Artes                | - Miranda                     |');
																							writeln ('    | - Plaza Zucre                 | - Colegio de Ingenieros       | - Los Dos Caminos             |');
																							writeln ('    | - Gato Negro                  | - Plaza Venezuela             | - Los Cortijos                |');
																							writeln ('    | - Agua Salud                  | - Sabana Grande               | - La California               |');
																							writeln ('    | - Cabo Amarillo               | - Chacaito                    | - Petare                      |');
																							writeln ('    | - Capitolio                   | - Chacao                      | - Palo Verde                  |');
																							writeln ('    | - La Hoyada                   |                               |                               |');
																							writeln ('    |_______________________________|_______________________________|_______________________________|');
																							writeln ('     _______');
																							writeln ('    |LINEA 2|_______________________________________________________________________________________ ');
																							writeln ('    | - El silencio                 | - La Paz                      | - Mamera                      |');          
																							writeln ('    | - Capuchinos                  | - La Yaguara                  | - Caricuao                    |');
																							writeln ('    | - Maternidad                  | - Carapita                    | - Zoologico                   |');
																							writeln ('    | - Artiguas                    | - Antimano                    | - Luis Pineda / Las adjuntas  |');
																							writeln ('    |_______________________________|_______________________________|_______________________________|');
																							writeln ('     _______');
																							writeln ('    |LINEA 3|_______________________________________________________________________________________ ');
																							writeln ('    | - Plaza Venezuela             | - La Bandera                  | - Coche                       |');          
																							writeln ('    | - Ciudad Universitaria        | - El Valle                    | - Mercado                     |');
																							writeln ('    | - Los Simbolos                | - Los Jardines                | - La Rinconada                |');
																							writeln ('    |_______________________________|_______________________________|_______________________________|');
																							writeln ('    |                          Presione 0 para ir a la siguiente pagina.                            |');
														                                    writeln ('    |_______________________________________________________________________________________________|');		
																							readln (linea2);
																							if linea2 = 0 then
																							begin
																							writeln ('     _______');
																							writeln ('    |LINEA 4|_______________________________________________________________________________________ ');
																							writeln ('    | - Zona Rental                 | - Materniadad                 | - Antimano                    |');          
																							writeln ('    | - Parque Central              | - Artigas                     | - Mamera                      |');
																							writeln ('    | - Nuevo Circo                 | - La Paz                      | - Luis Pineda / Las adjuntas  |');
																							writeln ('    | - Teatros                     | - La Yaguara                  |                               |');
																							writeln ('    | - Capuchino                   | - Carapita                    |                               |');
																							writeln ('    |_______________________________|_______________________________|_______________________________|');
																							writeln ('     _______');
																							writeln ('    |LINEA 5|_______________________________________________________________________________________ ');
																							writeln ('    | - Bello Monte                 | - Bello Campo                 | - Boleita                     |');          
																							writeln ('    | - Las Mercedes                | - Hugo Chavez                 | - El Marquez                  |');
																							writeln ('    | - Parque Simon Bolivar        | - Montecristo                 | - Warairarepano               |');
																							writeln ('    |_______________________________|_______________________________|_______________________________|');
																							writeln ('     _______');
																							writeln ('    |LINEA 6|_______________________________________________________');
																							writeln ('    | - Zoologico                   | - La Rinconada                |'); 
																							writeln ('    |_______________________________|_______________________________|');
																							writeln ('     _______');
																							writeln ('    |LINEA 7|_______________________________________________________________________________________ ');
																							writeln ('    | - Las Flores                  | - El Cristo                   | - Roosevelt                   |');          
																							writeln ('    | - Panteon                     | - Roca Tarpeya                | - La Bandera                  |');
																							writeln ('    | - Socorro                     | - Presidente Medina           | - Los Ilustres                |');
																							writeln ('    | - La Hoyada                   | - INCES                       |                               |');
																							writeln ('    |_______________________________|_______________________________|_______________________________|');
																							writeln ('     ___________');
																							writeln ('    |CLABETREN 8|_____________________________________________________________________________________ ');
																							writeln ('    | - Petare 2                    | - 5 de Julio                  | - Warairarepano               |');          
																							writeln ('    | - 19 de Abril                 | - 24 de Julio                 |                               |');
																							writeln ('    |_______________________________|_______________________________|_______________________________|');
																							writeln ();
																							readln (linea2);
																							writeln ('La linea que elegido es: ',linea2);
																							end;
																							if linea2 = 1 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 1|_________________________________________________________________________________________ ');
																							writeln ('    | -01: Propatria                | -09: Parque Carabobo         | -16: Altamira                    |');          
																							writeln ('    | -02: Perez Bonalde            | -10: Bellas Artes            | -17: Miranda                     |');
																							writeln ('    | -03: Plaza Zucre              | -11: Colegio de Ingenieros   | -18: Los Dos Caminos             |');
																							writeln ('    | -04: Gato Negro               | -12: Plaza Venezuela         | -19: Los Cortijos                |');
																							writeln ('    | -05: Agua Salud               | -13: Sabana Grande           | -20: La California               |');
																							writeln ('    | -06: Cabo Amarillo            | -14: Chacaito                | -21: Petare                      |');
																							writeln ('    | -07: Capitolio                | -15: Chacao                  | -22: Palo Verde                  |');
																							writeln ('    | -08: La Hoyada                |                              |                                  |');
																							writeln ('    |_______________________________|______________________________|__________________________________|');
																						
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion);
																							writeln ();
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 1|_________________________________________________________________________________________ ');
																							writeln ('    | -01: Propatria                | -09: Parque Carabobo         | -16: Altamira                    |');          
																							writeln ('    | -02: Perez Bonalde            | -10: Bellas Artes            | -17: Miranda                     |');
																							writeln ('    | -03: Plaza Zucre              | -11: Colegio de Ingenieros   | -18: Los Dos Caminos             |');
																							writeln ('    | -04: Gato Negro               | -12: Plaza Venezuela         | -19: Los Cortijos                |');
																							writeln ('    | -05: Agua Salud               | -13: Sabana Grande           | -20: La California               |');
																							writeln ('    | -06: Cabo Amarillo            | -14: Chacaito                | -21: Petare                      |');
																							writeln ('    | -07: Capitolio                | -15: Chacao                  | -22: Palo Verde                  |');
																							writeln ('    | -08: La Hoyada                |                              |                                  |');
																							writeln ('    |_______________________________|______________________________|__________________________________|');
																							
																							writeln ();
																							readln (subestdestino);
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METROBUS');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;														
																							end;
																						if linea2 = 2 then
																						begin
																						writeln ();
																						writeln ('Por favor, seleccione la sub estacion de salida.');
																						writeln ();
																						writeln ('     _______');
																						writeln ('    |LINEA 2|_______________________________________________________________________________________ ');
																						writeln ('    | -01: El silencio                 | -05: La Paz                      | -09:  Mamera                     |');          
																						writeln ('    | -02: Capuchinos                  | -06: La Yaguara                  | -10: Caricuao                    |');
																						writeln ('    | -03: Maternidad                  | -07: Carapita                    | -11: Zoologico                   |');
																						writeln ('    | -04: Artiguas                    | -08: Antimano                    | -12: Luis Pineda / Las adjuntas  |');
																						writeln ('    |_______________________________|_______________________________|________________________________________|');
																						
																						readln (subestacion);
																						clrscr;
																						writeln ();
																						writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																						writeln ();
																						writeln ();
																						writeln ();
																						writeln ('Ahora, por favor seleccione la sub estacion destino.');
																						writeln ();
																						writeln ('     _______');
																						writeln ('    |LINEA 2|________________________________________________________________________________________________ ');
																						writeln ('    | -01: El silencio                 | -05: La Paz                      | -09:  Mamera                     |');          
																						writeln ('    | -02: Capuchinos                  | -06: La Yaguara                  | -10: Caricuao                    |');
																						writeln ('    | -03: Maternidad                  | -07: Carapita                    | -11: Zoologico                   |');
																						writeln ('    | -04: Artiguas                    | -08: Antimano                    | -12: Luis Pineda / Las adjuntas  |');
																						writeln ('    |__________________________________|__________________________________|__________________________________|');
																						
																						readln (subestdestino);
																						writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																						writeln ();
																						clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METROBUS');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;															
																							end;
																							if linea2 = 3 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 3|________________________________________________________________________________________________ ');
																							writeln ('    | -01: Plaza Venezuela             | -04: La Bandera                  | -07: Coche                       |');          
																							writeln ('    | -02: Ciudad Universitaria        | -05: El Valle                    | -08: Mercado                     |');
																							writeln ('    | -03: Los Simbolos                | -06: Los Jardines                | -09: La Rinconada                |');
																							writeln ('    |__________________________________|__________________________________|__________________________________|');
																							
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																							writeln ();
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 3|________________________________________________________________________________________________ ');
																							writeln ('    | -01: Plaza Venezuela             | -04: La Bandera                  | -07: Coche                       |');          
																							writeln ('    | -02: Ciudad Universitaria        | -05: El Valle                    | -08: Mercado                     |');
																							writeln ('    | -03: Los Simbolos                | -06: Los Jardines                | -09: La Rinconada                |');
																							writeln ('    |__________________________________|__________________________________|__________________________________|');
																							
																							readln (subestdestino);
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METROBUS');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;															
																							end;
																							if linea2 = 4 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 4|_________________________________________________________________________________________________ ');
																							writeln ('    | -01: Zona Rental                 | -06: Materniadad                 | -11: Antimano                     |');          
																							writeln ('    | -02: Parque Central              | -07: Artigas                     | -12: Mamera                       |');
																							writeln ('    | -03: Nuevo Circo                 | -08: La Paz                      | -13: Luis Pineda / Las adjuntas   |');
																							writeln ('    | -04: Teatros                     | -09: La Yaguara                  |                                   |');
																							writeln ('    | -05: Capuchino                   | -10: Carapita                    |                                   |');
																							writeln ('    |__________________________________|__________________________________|___________________________________|');
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 4|_________________________________________________________________________________________________ ');
																							writeln ('    | -01: Zona Rental                 | -06: Materniadad                 | -11: Antimano                     |');          
																							writeln ('    | -02: Parque Central              | -07: Artigas                     | -12: Mamera                       |');
																							writeln ('    | -03: Nuevo Circo                 | -08: La Paz                      | -13: Luis Pineda / Las adjuntas   |');
																							writeln ('    | -04: Teatros                     | -09: La Yaguara                  |                                   |');
																							writeln ('    | -05: Capuchino                   | -10: Carapita                    |                                   |');
																							writeln ('    |__________________________________|__________________________________|___________________________________|');
																							
																							readln (subestdestino);
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METROBUS');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;															
																							end;
																							if linea2 = 5 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 5|________________________________________________________________________________________________ ');
																							writeln ('    | -01: Bello Monte                 | -04: Bello Campo                 | -07: Boleita                     |');          
																							writeln ('    | -02: Las Mercedes                | -05: Hugo Chavez                 | -08: El Marquez                  |');
																							writeln ('    | -03: Parque Simon Bolivar        | -06: Montecristo                 | -09: Warairarepano               |');
																							writeln ('    |__________________________________|__________________________________|__________________________________|');
																							
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 5|________________________________________________________________________________________________ ');
																							writeln ('    | -01: Bello Monte                 | -04: Bello Campo                 | -07: Boleita                     |');          
																							writeln ('    | -02: Las Mercedes                | -05: Hugo Chavez                 | -08: El Marquez                  |');
																							writeln ('    | -03: Parque Simon Bolivar        | -06: Montecristo                 | -09: Warairarepano               |');
																							writeln ('    |__________________________________|__________________________________|__________________________________|');
																						
																							readln (subestdestino);
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METROBUS');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																						    writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;															
																							end;
																							if linea2 = 6 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 6|________________________________________________________');
																							writeln ('    | -01: Zoologico                   | -02: La Rinconada           |'); 
																							writeln ('    |__________________________________|_____________________________|');
																							
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 6|________________________________________________________');
																							writeln ('    | -01: Zoologico                   | -02: La Rinconada           |'); 
																							writeln ('    |__________________________________|_____________________________|');
																							
																							writeln();
																							readln (subestdestino);
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METROBUS');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;															
																							end;
																							if linea2 = 7 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 7|_____________________________________________________________________________________________ ');
																							writeln ('    | -01: Las Flores                  | -05: El Cristo                   | -09: Roosevelt                |');          
																							writeln ('    | -02: Panteon                     | -06: Roca Tarpeya                | -10: La Bandera               |');
																							writeln ('    | -03: Socorro                     | -07: Presidente Medina           | -11: Los Ilustres             |');
																							writeln ('    | -04: La Hoyada                   | -08: INCES                       |                               |');
																							writeln ('    |__________________________________|__________________________________|_______________________________|');
																							
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ();
																							writeln ('     _______');
																							writeln ('    |LINEA 7|_____________________________________________________________________________________________ ');
																							writeln ('    | -01: Las Flores                  | -05: El Cristo                   | -09: Roosevelt                |');          
																							writeln ('    | -02: Panteon                     | -06: Roca Tarpeya                | -10: La Bandera               |');
																							writeln ('    | -03: Socorro                     | -07: Presidente Medina           | -11: Los Ilustres             |');
																							writeln ('    | -04: La Hoyada                   | -08: INCES                       |                               |');
																							writeln ('    |__________________________________|__________________________________|_______________________________|');
																							
																							readln (subestdestino);
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METROBUS');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																						    writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;															
																							end;
																							if linea2 = 8 then
																							begin
																							writeln ();
																							writeln ('Por favor, seleccione la sub estacion de salida.');
																							writeln ();
																							writeln ('     ___________');
																							writeln ('    |CLABETREN 8|_________________________________________________________________________________________ ');
																							writeln ('    | -01: Petare 2                    | -03: 5 de Julio                  | -05: Warairarepano            |');          
																							writeln ('    | -02: 19 de Abril                 | -04: 24 de Julio                 |                               |');
																							writeln ('    |__________________________________|__________________________________|_______________________________|');
																							writeln ();
																							readln (subestacion);
																							clrscr;
																							writeln ();
																							writeln ('Usted ha seleccionado la sub estacion de salida: ',subestacion,'.');
																							writeln ();
																							writeln ('Ahora, por favor seleccione la sub estacion destino.');
																							writeln ('     ___________');
																							writeln ('    |CLABETREN 8|_________________________________________________________________________________________ ');
																							writeln ('    | -01: Petare 2                    | -03: 5 de Julio                  | -05: Warairarepano            |');          
																							writeln ('    | -02: 19 de Abril                 | -04: 24 de Julio                 |                               |');
																							writeln ('    |__________________________________|__________________________________|_______________________________|');
																							writeln ();
																							readln (subestdestino);
																							writeln ('Usted ha seleccionado la sub estacion de destino: ',subestdestino,'.');
																							writeln ();
																							clrscr;
																							textcolor(LightMagenta);
																							writeln ('      ________________________________________________________');
																							writeln ('     |       DETALLES DE LA COMPRA DE SUS BOLETOS.            |');
																							writeln ('     |                                                        |');
																							writeln ('     | NOMBRE: ',upcase(nombre));
																							writeln ('     | APELLIDO: ',upcase(apellido));
																							writeln ('     | CEDULA: ',cedula);
																							writeln ('     | TIPO DE VIAJE: METROBUS');
																							writeln ('     |                                                        |');
																							writeln ('     | Sub estacion de salida seleccionada: ',subestacion);
																							writeln ('     | Sub estacion de destino seleccionada: ',subestdestino);
																							writeln ('     | Tickets disponibles: ',cantboletos);
																							writeln ('     | Monto total: $',cantboletos*tipoboleto*10);
																							writeln ('     |________________________________________________________|');
																							writeln ();
																							writeln ('      Presione 0 si esta seguro de su compra.                   ');
																							writeln ('      Presione 1 si desea cancelar su compra.                   ');
																							readln (z);
																						    if z = 1 then
																							begin
																							writeln ();
																							writeln ('Gracias por visitar el Metro de Caracas, vuelva pronto.');
																							writeln ();
																							writeln ('Nota: se necesitan 20 segundos de valor para hacer lo que sea. Hasta luego!!');
																							exit;
																							end;
																							if z = 0 then
																							begin
																							clrscr;
																							writeln ('El monto total a pagar es: $',cantboletos*tipoboleto*10);
																							writeln ();
																							writeln ('Por favor, introduzca la cantidad de dinero que ingresara en el sistema para comprar sus boletos.');
																												
																							readln (money);
																							writeln ();
																							montofinal:=cantboletos*tipoboleto*10
																							end;
																						    if montofinal - money < 0 then
																							begin
																							writeln ('Usted ha ingresado una cantidad superior a la expresada en el sistema.');
																							writeln ('Su vuelto es: $',montofinal-money);
																							end;
																						    while montofinal - money > 0 do
																							begin
																						    writeln  ('Usted ha ingresado un monto menor al expresado en sistema, por favor, ingrese el monto adecuado.');
																							readln (money);
																							end;
																							if montofinal - money = 0 then
																							begin
																							writeln ('Hemos recibido su pago.');
																							end;	
																							clrscr;
																							writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																							writeln ();
																						    clrscr;
																									writeln ('Usted ha cancelado el monto final de su factura exitosamente.');
																									writeln ();
																									writeln ();
																									writeln ('      _____________________________________');
																									writeln ('     |       Que desea hacer ahora?        |');
																									writeln ('     |                                     |');
																									writeln ('     |      1: COMPRAR MAS BOLETOS         |');
																									writeln ('     |      2: VER SISTEMA (SOLO ADMIN)    |');
																									writeln ('     |      3: SALIR                       |');
																									writeln ('     |_____________________________________|');	
																									readln (ultmenu);	
																									case ultmenu of
																									 
																										1:
																										begin
																										writeln ('Enseguida volvera al menu de compras');
																										goto Prueba;
																										end;
																										2:
																										begin																										
																										writeln ('Ingrese la clave');
																										readln (clave);
																										while clave <> 1968 do 
																										begin
																										writeln ('Su clave ha sido incorrecta, por favor intente nuevamente');
																										readln (clave);
																										end;
																										
																										
																										if clave=1968 then
																										begin
																											clrscr;
																											writeln ('');
																											writeln ('    Cantidad de personas que han ingresado por linea');
																											writeln ('');
																											writeln ('    ________________________________________________');
																											writeln ('   | Linea 1: 1        Linea 2: 0        Linea 3: 0 |');
																											writeln ('   | Linea 4: 0        Linea 5: 0        Linea 6: 0 |');
																											writeln ('   | Linea 7: 0        CLABETREN 8: 0               |');
																											writeln ('   |________________________________________________|');
																											writeln ('');
																											writeln ('');
																											writeln ('');
																											writeln ('    Cantidad de boletos utilizados');
																											writeln ('');
																											writeln ('       Boletos utilizados: 1');
																											end;
																										end;
																										3:																									
																										writeln ('Gracias por preferirnos, esperamos vuelva pronto');
																										end;														
																							end;
end;
end;
end;
end;
end;

end.
