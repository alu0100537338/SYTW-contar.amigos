# -*- coding: utf-8 -*-
require 'twitter'
require './configure'

#Usamos por defecto el ejemplo visto en clase.
screen_name = ARGV[0] || 'timoreilly'


screen_number = ARGV[1] || 3
screen_number = screen_number.to_i

amigos = Hash.new

#Guardamos los ids de los amigos.
seguidores = Twitter.friend_ids(screen_name).ids


#Buscamos y relacionamos el nombre de los amigos con el número de seguidores en el hash de amigos.
n = screen_number - 1

#Si excedemos el número máximo de peticiones (350), debemos esperar 15min para volver a ejecutar la aplicación.
for i in (0..follow.length)
	#Mostramos los primeros usuarios dentro del limite de peticiones.
	if (i < 90) 
		id = seguidores[i]
		amigos[Twitter.user(id).name] = Twitter.user(id).followers_count
	end
end

#Mostramos a quienes tengan mayor popularidad.
for i in (0..n)
	a = i+1
	puts "#{a}.- #{amigos.key(amigos.values.sort.reverse[i])}  #{amigos.values.sort.reverse[i]} seguidores  " 
end
