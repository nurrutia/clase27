class Carta
attr_accessor :pinta ,:numero

	def initialize(numero, pinta)
		@numero = numero
		@pinta = pinta
	end
	
	def mostrar
		puts"#{@numero} de #{@pinta} "
	end
end

def guardar(nombre)
	File.open("cartas.txt","r") do |file|
		file.puts nombre
	end
end


numeros = [1,2,3,4,5,6,8,9,10,11,12,13]
pintas = ["Corazon","Diamante","Trebol","Picas"]
arr = []
	

puts "1.-Si ingresa la palabra 'jugar' se generar 5 cartas al azar "
puts "2.-Si ingresa la palabra 'guardar' se guardaran las cartas en un archivo "
puts "3.-Si ingresa la palabra 'mostrar' mostrara las cartas que se generaron al azar "
puts "4.-Si ingresa la palabra 'leer' se leeran las cartas guardadas en el archivo"
puts "5.-Si ingresa la palabra 'salir' se saldra el programa "
opcion = gets.chomp
case opcion
when "jugar"
#Generar
File.truncate('cartas.txt', 0)
5.times do |x|
	arr << Carta.new(numeros.sample, pintas.sample)	
end	  

when "guardar"
#mostrar
arr.each { |x| puts ("#{x.numero} #{x.pinta}")}   

when "mostrar"
#guardar
arr.each { |x| guardar("#{x.numero} #{x.pinta}")}   

when "leer"

when "salir"
end  
