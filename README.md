# ServicioProtec
Automatización api petstore.swagger.io


El siguiente programa funciona para probar el correcto funcionamiento de la pagina swagger.
En los test se realiza la prueba funcional de los siguiente metodos:
- post
-get(por id)
-put
-get(por estatus)



Pasos para realizar los test:


1. De mera individual

 - ingresar a la carpeta src/test/java/pets
 - Al estar en la carpeta pets encontraremos las siguientes carpetas: get, json, post, put 
 - para probar los metodos get ingresamos a la carpeta get, dentro encontraremos 2 feature, pet-getById y pet-getByStatus
 - ingresamos a la que querramos probar
 - para probar el metodo post ingresamos a la carpeta post, dentro habrá solo un feature, en el cual podemos modificar    cual es el nombre que deseamos ponerle a la mascota asi como el id, si se desea cambiarle mas info ingresamos a la carpeta json donde encontraremos el json que se envia, ahi podemos realizar mas modificaciones
 - para probar el put ingresamos a la carpeta put y ejecutamos


2. Todas las pruebas al mismo tiempo
 - ingresamos a la carpeta pets y all buscamos el archivo llamado ManagemenTest, alli debemos ejecutar el metodo llamado testAll
