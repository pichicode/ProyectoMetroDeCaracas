program MetrodeCaracas;
uses crt;
var nombre, apellido, tipoboleto, cedula: string[80];
	x, y , cantboletos, tipoviaje: integer;
		
begin	
		writeln ('   Te doy la bienvenida al Metro de Caracas.');
		writeln ('       ¿Desea adquirir algun boleto?');
		writeln ('             OPCION 01: SI');
		writeln ('             OPCION 02: NO');
		readln (x); 
				while (x <> 1) and (x <> 2) do
				begin
				clrscr;
				writeln ('Dato invalido. Intente de nuevo.');
				writeln ('   Te doy la bienvenida al Metro de Caracas.');
				writeln ('       ¿Desea adquirir algun boleto?');
				writeln ('             OPCION 01: SI');
				writeln ('             OPCION 02: NO');
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
							writeln ('         NOMBRE:');
							readln (nombre);
							writeln ('         APELLIDO:');
							readln (apellido);
							writeln ('         CEDULA DE IDENTIDAD.');
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
														clrscr;
														writeln ('Por favor, indique la cantidad de boletos que desea comprar.');
														readln (cantboletos);
														writeln ('');
														clrscr;
														writeln ('     ¡Genial! Por favor, indique el tipo de boleto que desea adquirir');
														writeln ('segun las opciones que se mostraran a continuacion.');
														writeln ('');
														writeln ('');
														writeln ('    BOLETO                       COLOR                           COBERTURA');
														writeln ('a. Simple.                      Amarillo.                     (1) Viaje en metro.');
														writeln ('b. Integrado.                   Amarillo.                     (1) Viaje en metro.');
														writeln ('c. Integrado.                   Amarillo.                     (1) Viaje en metrobus.');
														writeln ('d. Ida y vuelta.                Amarillo.                     (2) Viajes en metro.');
														writeln ('e. Ida y vuelta integrado.      Amarillo.                     (2) Viajes en metro.');
														writeln ('f. Ida y vuelta integrado.      Amarillo.                     (2) Viaje en metro bus.');
														writeln ('g. MultiAbono.                  Naranja.                     (10) Viajes en metro.');
														writeln ('h. Multiabono Integrado.        Naranja.                     (10) Viajes en metro.');
														writeln ('i. Multiabono Integrado.        Naranja.                     (10) Viajes en metrobus.');
														writeln ('j. Estudiantil simple.           Azul.                       (10) Viajes en metro.');
														writeln ('k. Estudiantil integrado.        Azul.                       (10) Viajes en metro.');
														writeln ('l. Estudiantil integrado.        Azul.                       (20) Viajes en metrobus.');
														writeln ('m. Metro - Tarjeta.              Rojo.                       (20) Viajes.');
														writeln ('n. Metro - Tarjeta.              Rojo.                       (30) Viajes.');
														writeln ('o. Metro - Tarjeta.              Rojo.                       (40) Viajes.');
														writeln ('p. Metro - Tarjeta integrada.    Rojo.                       (20) Viajes (metro y metrobus.');
														writeln ('q. Metro - Tarjeta integrada.    Rojo.                       (30) Viajes (metro y metrobus.');
														writeln ('r. Metro - Tarjeta integrada.    Rojo.                       (40) Viajes (metro y metrobus.');
														writeln ();
														readln (tipoboleto);
														writeln ('El monto total es: $',cantboletos*cantboletos/2:1:2);
																	while (tipoboleto <> 'a') and (tipoboleto <> 'b') and (tipoboleto <> 'c') and (tipoboleto <> 'd') and (tipoboleto <> 'e') and (tipoboleto <> 'f') and (tipoboleto <> 'g') and (tipoboleto <> 'h') and (tipoboleto <> 'i') and (tipoboleto <> 'j') and (tipoboleto <> 'k') and (tipoboleto <> 'l') and (tipoboleto <> 'm') and (tipoboleto <> 'n') and (tipoboleto <> 'o') and (tipoboleto <> 'p') and (tipoboleto <> 'q') and (tipoboleto <> 'r') do 
																	begin
																	clrscr;
																	writeln ('Dato invalido. Intente de nuevo.');
																	writeln ('');
																	writeln ('');
																	writeln ('    BOLETO                       COLOR                           COBERTURA');
																	writeln ('a. Simple.                      Amarillo.                     (1) Viaje en metro.');
																	writeln ('b. Integrado.                   Amarillo.                     (1) Viaje en metro.');
																	writeln ('c. Integrado.                   Amarillo.                     (1) Viaje en metrobus.');
																	writeln ('d. Ida y vuelta.                Amarillo.                     (2) Viajes en metro.');
																	writeln ('e. Ida y vuelta integrado.      Amarillo.                     (2) Viajes en metro.');
																	writeln ('f. Ida y vuelta integrado.      Amarillo.                     (2) Viaje en metro bus.');
																	writeln ('g. MultiAbono.                  Naranja.                     (10) Viajes en metro.');
																	writeln ('h. Multiabono Integrado.        Naranja.                     (10) Viajes en metro.');
																	writeln ('i. Multiabono Integrado.        Naranja.                     (10) Viajes en metrobus.');
																	writeln ('j. Estudiantil simple.           Azul.                       (10) Viajes en metro.');
																	writeln ('k. Estudiantil integrado.        Azul.                       (10) Viajes en metro.');
																	writeln ('l. Estudiantil integrado.        Azul.                       (20) Viajes en metrobus.');
																	writeln ('m. Metro - Tarjeta.              Rojo.                       (20) Viajes.');
																	writeln ('n. Metro - Tarjeta.              Rojo.                       (30) Viajes.');
																	writeln ('o. Metro - Tarjeta.              Rojo.                       (40) Viajes.');
																	writeln ('p. Metro - Tarjeta integrada.    Rojo.                       (20) Viajes (metro y metrobus.');
																	writeln ('q. Metro - Tarjeta integrada.    Rojo.                       (30) Viajes (metro y metrobus.');
																	writeln ('r. Metro - Tarjeta integrada.    Rojo.                       (40) Viajes (metro y metrobus.');
																	writeln ();
																	readln (tipoboleto);
																	end;
																			clrscr;
																			writeln ('');
																			writeln ('');
																			writeln ('Por favor, describa el tipo de viaje que desea realizar.');
																			writeln ('');
																			writeln ('OPCION 01: Viaje en metro.');
																			writeln ('OPCION 02: Viaje en metrobus.');
																			readln (tipoviaje);
																				case tipoviaje of
																					1: begin
																					writeln ('El monto total es: $',cantboletos*tipoviaje);
																					end;
																							2: begin
																							writeln ('El monto total es: $',cantboletos*tipoviaje/4:1:2);
																										while (x <> 1) and (x <> 2) do
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
																												
													end;
end;
end;
end;
end.
