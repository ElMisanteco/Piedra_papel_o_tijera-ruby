########################################################################
# piepaptij -> Es la funcion que contiene la dinamica del juego        #
# dos_de_tres -> Es la funcion que ejecuta la dinámica de juego 2 de 3 #
#                                                                      #
#                                                                      #
#                                                                      #
########################################################################


##############  FUNCIÓN PRINCIPAL DEL JUEGO   ############################################################################
def piepaptij

  # Opciones disponibles para elegir.
  opciones = ["piedra", "papel", "tijera"]

  begin # ----> Loop que se repetirá hasta que el usuario ingrese una opción válida.

    puts"\n===================================="
    # Solicitar al usuario que escoja una de las opciones y a continuación se captura.
    puts "¿Piedra papel o tijera? 😀"
    elec_usuario = gets.chomp.downcase
    puts ""

  # Si lo que ingresó el usuario no es válido, se entra en el if y se indica al usuario que lo que ingresó no es válido.
  unless opciones.include?(elec_usuario)
    puts "--> #{elec_usuario} <-- no es válido. 🤨"
  end

  end until opciones.include?(elec_usuario) # ---> El loop terminará si la elección que ingresó el usuario es válida.

  # Eleccion de la computadora.
  elec_pc = opciones.sample

  # Mostrar la eleccion de cada jugador.
  puts "Tú escogiste --> #{elec_usuario} <-- y la computadora --> #{elec_pc} <--."

  # Estructura case para determinar quien gana.
  case
    when elec_usuario == elec_pc
      puts "==> Tenemos un empate. 😮"

    when elec_usuario == "piedra" && elec_pc == "tijera"
       puts "==> 🎉🎊🏆 Felicidades por tu victoria. 🏆🎊🎉"
      victoria = "usuario"

    when elec_usuario == "papel" && elec_pc == "piedra"
       puts "==> 🎉🎊🏆 Felicidades por tu victoria. 🏆🎊🎉"
      victoria = "usuario"

    when elec_usuario == "tijera" && elec_pc == "papel"
       puts "==> 🎉🎊🏆 Felicidades por tu victoria. 🏆🎊🎉"
      victoria = "usuario"

    else
       puts "==> 😿 Diablos, que mala suerte, perdiste, lo siento.😔 😿"
      victoria = "computadora"

  end # <-- Fin del case que determina quien gana

  return victoria # <-- Se retorna quien es el ganador del juego.

end # <-------- Fin de funcion principal del juego


###########################################################################################################3



###################### Funcion  2 de 3 ########################################################### 

def dos_de_tres

  victoria_total_pc = 0
  victoria_total_usuario = 0

  begin

    ganador = piepaptij()

  if ganador == "computadora"
    victoria_total_pc = victoria_total_pc + 1
  elsif ganador == "usuario"
    victoria_total_usuario = victoria_total_usuario + 1
  end
  puts "\n----------------------------------"
  puts "Usuario: #{victoria_total_usuario}"
  puts "Computadora:  #{victoria_total_pc}"

  end until victoria_total_pc == 2 || victoria_total_usuario == 2

# El bloque siguiente identifica quien tiene más victorias y decreta al ganador.
puts "\n ++++++++++++++++++++++++++++++++++++++++++++"
if victoria_total_pc < victoria_total_usuario
  puts "\n 🎉🥳 🏆Felicidades, Tú eres el ganador definitivo.🏆 🥳🎉"
else
 puts "\n 😿🤙 Perdiste, que mala suerte, la computadora es la ganadora.😿🤙"
end

puts "\n ++++++++++++++++++++++++++++++++++++++++++++"

end #<---- Fin de funcion 2 de 3

#####################################################################################################


# Implementación para elegir jugar una vez o 2 de 3

jugar = true # <-- Esta variable es la que se toma en cuenta para seguir jugando o no (Posteriormente tendrá un uso más especifico)


##########################################################################################################################################################################
#
#
#
while true # <-- Este bucle es el que decidirá si seguir jugando o no.

  # Menú de opciones.
  puts "" # <-- solo inserta un espacio.
  puts " 1 ==> jugar una vez"
  puts " 2 ==> Jugar 2 de 3"
  print "¿Qué modo de juego quieres jugar? " #<-- Indica al usuario que escriba la opción deseada.
  respuesta_tipo_juego = gets.chomp.to_i # <--Captura la elección del usuario y la transforma en número entero.

  #Con la siguiente estructura de if se evalúa lo que el usuario ingresó y se ejecuta la acción pertinente.
  if respuesta_tipo_juego == 1

    puts "\nJugar una vez..." # <-- Se indica el tipo de juego.
    piepaptij # <-- Se llama el método que se ejecuta una vez.
    return false # <-En caso de que el usuario escoja esta opción, después de ejecutar la acción de juego, se retorna <falso> para que el bucle se termine.

  elsif respuesta_tipo_juego == 2

    puts "\nJugar 2 de 3..." # <-- Se indica el tipod e juego.
    dos_de_tres #<-- Se llama al método que ejecuta el juego en modo 2 de 3.
    return false # <- En caso de que el usuario escoja esta opción, después de ejecutar la acción de juego, se retorna <falso> para que el bucle se termine.

  else

    puts "\nEscribe una opción válida." # <- En caso de que el usuario escoja una opción que no esté contemplada, se muestra el mensaje que indica que la entrada no es válida y retorna <true> (no se indica ya que por defecto esta en modo true) para que el ciclo se repita y se muestre el menú.

  end # <-- find e estructura if

end # <-- Fin de estructura while
#
#
###################################################################################################################################