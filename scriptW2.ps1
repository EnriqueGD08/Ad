# Suponiendo que vamos a ejecutar un nuevo proyecto, crear las carpetas de proyecto y establecer los permisos a dos de los perfiles de usuarios utilizados en esta práctica.
# Los perfiles de usuarios son: 
# Jugadoras: gara, gema, gisela
# Entrenadoras: candy, celia
# El proyecto se va a llamar "Proyecto1" y se va a crear en la carpeta "C:\Users\Usuario\Desktop\Proyectos".

# Crear las carpetas de proyecto
New-Item -Path "C:\Users\Usuario\Desktop\Proyectos\Proyecto1" -ItemType Directory

# Establecer los permisos a las carpetas de proyecto
# Jugadoras
$jugadoras = "gara", "gema", "gisela"
foreach ($jugadora in $jugadoras) {
    # Establecer permisos
    icacls "C:\Users\Usuario\Desktop\Proyectos\Proyecto1" /grant $jugadora:"(OI)(CI)F"
}

# Entrenadoras
$entrenadoras = "candy", "celia"
foreach ($entrenadora in $entrenadoras) {
    # Establecer permisos
    icacls "C:\Users\Usuario\Desktop\Proyectos\Proyecto1" /grant $entrenadora:"(OI)(CI)F"
}



