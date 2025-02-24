
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

  case
    when elec_usuario == elec_pc
      puts "Tú escogiste --> #{elec_usuario} <-- y la computadora --> #{elec_pc} <--."
      puts "==> Tenemos un empate. 😮"

    when elec_usuario == "piedra" && elec_pc == "tijera"
      puts "Tú escogiste --> #{elec_usuario} <-- y la computadora --> #{elec_pc} <--."
      puts "==> 🎉🎊🏆 Felicidades por tu victoria. 🏆🎊🎉"
      victoria = "usuario"

    when elec_usuario == "papel" && elec_pc == "piedra"
      puts "Tú escogiste --> #{elec_usuario} <-- y la computadora --> #{elec_pc} <--."
      puts "==> 🎉🎊🏆 Felicidades por tu victoria. 🏆🎊🎉"
      victoria = "usuario"

    when elec_usuario == "tijera" && elec_pc == "papel"
      puts "Tú escogiste --> #{elec_usuario} <-- y la computadora --> #{elec_pc} <--."
      puts "==> 🎉🎊🏆 Felicidades por tu victoria. 🏆🎊🎉"
      victoria = "usuario"

    else
      puts "Tú escogiste --> #{elec_usuario} <-- y la computadora --> #{elec_pc} <--."
      puts "==> 😿 Diablos, que mala suerte, perdiste, lo siento.😔 😿"
      victoria = "computadora"

  end

  return victoria

end



victoria_total_pc = 0
victoria_total_usuario = 0

begin

  ganador = piepaptij()

  if ganador == "computadora"
    victoria_total_pc = victoria_total_pc +1
  elsif ganador == "usuario"
    victoria_total_usuario = victoria_total_usuario + 1
  end
  puts "\n----------------------------------"
  puts "Usuario: #{victoria_total_usuario}"
  puts "Computadora:  #{victoria_total_pc}"

end until victoria_total_pc == 2 || victoria_total_usuario == 2

puts "\n ++++++++++++++++++++++++++++++++++++++++++++"
if victoria_total_pc < victoria_total_usuario
  puts "\n 🎉🥳 🏆Felicidades, Tú eres el ganador🏆 🥳🎉"
else
 puts "\n 😿🤙 Perdiste, que mala suerte 😿🤙"
end

puts "\n ++++++++++++++++++++++++++++++++++++++++++++"