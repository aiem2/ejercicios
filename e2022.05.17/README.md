# Actividad Presencial
## Desafío Opcional Módulo 9 Unidad 2

Para poder realizar este actividad debes haber realizado los cursos previos junto con los videos online correspondientes a la experiencia XXX.


El objetivo de este ejercicio es la implementación de un sistema de autenticación con dependencias externas (gem devise).

## Setup

Forkear el proyecto a tu cuenta de Github y luego clonar en tu entorno de desarrollo local

```
git clone https://github.com/cras-1296/desa_04.git

cd manual_jam

rails db:migrate

rails s
 ```
## Indicaciones

*1. Desde el material de apoyo, descarga el proyecto manual_jam
*2. Revisa el proyecto partiendo por las rutas. Puedes revisar el archivo de rutas o
directamente en la consola con rails routes.
Comienzo de Actividad
PicStory es una aplicación para que diversos usuarios guarden sus historias y puedan
compartirlas, pero esta aplicación no está terminada, el cliente necesita:
● Crear un modelo user con los campos name (string), email (string) y admin
(boolean). (0,5 Puntos)
● Agregar la gema devise al gemfile. Sigue la documentación para el setup básico. (0,5
Puntos)
● Agregar Devise al modelo User. (0,5 Puntos)
● Generar las vistas de Devise y agregar el campo name. (1 Punto)
● Modificar el formulario de registro para agregar el campo name. (1 Punto)
● Validar el campo name como obligatorio. (0,5 Puntos)
● Agregar las relaciones entre los modelos User y Story. (0,5 Puntos)
● Al momento de crear una nueva historia, asignar el usuario creador a la historia
creada. (0,5 Puntos)
● Modificar el Navbar para que muestre links de inicio o cierre de sesión según el caso.
(0,5 Puntos)
● Modificar la vista index de Story, si el usuario no está conectado sólo mostrará el
botón de show en cada Story. (0,5 Puntos)
● Si el usuario está conectado, el usuario solo podrá modificar las historias que le
pertenecen. (0,5 Puntos)
● Si el usuario conectado es admin, el usuario podrá modificar todas las historias. (0,5
Puntos)
● Crear vista con las historias que le pertenecen al usuario. (0,5 Puntos)
● Crear un panel de control de usuarios al que solo tendrán acceso los usuarios admin
(El panel de control es solo una acción especial nueva, que muestra todos los
usuarios. Esta acción sólo debe ser accesible para un usuario con el rol admin). (0,5
Puntos)
● Dentro del panel de control de usuarios, añadir al formulario de user la opción para
dar o quitar el privilegio de admin. (0,5 Puntos)
● Aplicar diseño a las vistas de Devise, acorde al diseño de la aplicación. (1 Punto)
● Subir la aplicación funcionando a Heroku. (0,5 Puntos)
## Opcional
- Añade la opción de login con facebook.
- Añade que al registrarse, al usuario se le envíe un correo de bienvenida
