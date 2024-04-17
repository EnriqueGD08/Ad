# Crear los usuarios y su correspondiente asociación a grupos suponiendo que inicialmente esa información nos la proporcionan en un archivo csv.
# El archivo csv tiene la siguiente estructura:

# Importar el archivo csv
$usuarios = Import-Csv -Path "C:\usuarios.csv"

# Recorrer el archivo csv
foreach ($usuario in $usuarios) {
    # Crear el usuario
    New-LocalUser -Name $usuario.Usuario -FullName "$($usuario.Nombre) $($usuario.Apellido)" -Description "Usuario creado por script" -NoPassword

    # Asociar el usuario al grupo
    Add-LocalGroupMember -Group $usuario.Grupo -Member $usuario.Usuario
}
