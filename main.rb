# Opciones disponibles para elegir.
opciones = ["piedra", "papel", "tijera"]

begin # ----> Loop que se repetirá hasta que el usuario ingrese una opción válida.

# Solicitar al usuario que escoja una de las opciones y a continuación se captura.
puts "¿Piedra papel o tijera?"
elec_usuario = gets.chomp.downcase

# Si lo que ingresó el usuario no es válido, se entra en el if y se indica al usuario que lo que ingresó no es válido.
if !opciones.include?(elec_usuario)
  puts "Elección no válida, intenta de nuevo..."
end

end until opciones.include?(elec_usuario) # ---> El loop terminará si la elección que ingresó el usuario es válida.

# Eleccion de la computadora.
elec_pc = opciones.sample

# Se muestran la elección del usuario y de la computadora
puts "Usuario: #{elec_usuario}"
puts "Computadora: #{elec_pc}"

# Implementar un case para saber quien ganó.