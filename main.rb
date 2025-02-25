
############## FUNCION DEL JUEGO    
def piepaptij()

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

end # <-------- Fin de funcion del juego



###################### Funcion de 3 de 3
def quienGana()

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

puts "\n ++++++++++++++++++++++++++++++++++++++++++++"
if victoria_total_pc < victoria_total_usuario
  puts "\n 🎉🥳 🏆Felicidades, Tú eres el ganador definitivo.🏆 🥳🎉"
else
 puts "\n 😿🤙 Perdiste, que mala suerte, la computadora es la ganadora.😿🤙"
end

puts "\n ++++++++++++++++++++++++++++++++++++++++++++"

end #<---- Fin de funcion 3 de 3

quienGana()

# Implementación para elegir jugar una vez o 2 de 3
#jugar = true
#
#while jugar
# 
#end