#se crea la clase product
class Product
	attr_accessor :name, :azul, :rojo, :verde
	def initialize(name,azul,rojo,verde)
		@name = name
		@azul = azul
		@rojo = rojo
		@verde = verde
	end
end

#abrir archivo
def abrir_producto(archivo)
	arreglo = []
	File.open(archivo, "r") do |f|
		f.each_line do |line|
			 arreglo << Product.new(*line.chomp.split(", "))
		end
	end
	return arreglo
end

def nuevo_producto(name,azul,rojo,verde)
	File.open("productos.txt","a") do |file|
		file.puts"#{name}, #{azul}, #{rojo}, #{verde}"
	end
end

a = abrir_producto("productos.txt")
a.each do|i|
	puts i.name
end

puts "Ingrese el nombre del producto"
name = gets.chomp
puts "Ingrese stock color Azul"
azul = gets.chomp
puts "Ingrese stock color Rojo"
rojo = gets.chomp
puts "Ingrese stock color Verde"
verde = gets.chomp

nuevo_producto(name,azul,rojo,verde)