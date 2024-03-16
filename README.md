# Comando free para MAC 

![Alt text](Captura.png?raw=true "Captura imagen del programa")

## Contexto 
"El comando `free` es una herramienta útil que proporciona información sobre el uso de la memoria del sistema.

MacOs no dispone de este comando por defecto.

Para ello se ha creado este pequeño script que utiliza los comandos `sysctl` y `vm_stat` disponibles en macOS para obtener información sobre la memoria total, la memoria libre y la memoria usada en el sistema. 

Luego, muestra esta información en la terminal y también copia la memoria usada al portapapeles.


## Características
    - Desarrollado en Bash ☺️
    - Soporte exclusivo para MAC  ❤️ 
    - Aplicación de terminal  🎮
    - Sin argumentos 🤪
    - Copia el resultado al portapapeles ✅
    - Idioma: Español 🇪🇸


## Ejecutar

```bash
# Permisos para ejecutar 
chmod 741 free.sh 

# Ejecutar
./free.sh 
```

## Licencia

GNU General Public License v3.0

```
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```
---