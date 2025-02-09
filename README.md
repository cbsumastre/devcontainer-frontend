## Contenedor de desarrollo (Front End) 🚀

Este repositorio contiene un Dockerfile para crear un entorno de desarrollo personalizado con Node.js, NVM, y herramientas esenciales como Git, SVN, Vim, y otras. 

El contenedor está configurado con un usuario `vscode` con permisos sudo y un directorio de trabajo `/workspace`.

### Notas
El Dockerfile está basado en Ubuntu 22.04.

El usuario vscode tiene permisos sudo para facilitar la instalación de software y otras tareas administrativas.

El directorio /workspace está configurado como directorio de trabajo y está sincronizado con el directorio actual en tu máquina host.