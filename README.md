# Laboratrio Java
## Instalaciones 

El presente desarrollo se realizo con el entorno de desarollo ingellij IDEA, la version 17 del JDK de java, y se uso el motor de bases de datos de mysql, que viene con laragon.

### Tabla de Informacion de Descarga
| Informacion |Installer | Link |
|-------------|------|----------|
| IDE IntelliJ IDEA | .exe Community | https://www.jetbrains.com/es-es/idea/download/#section=windows
| JDK | .msi | https://docs.microsoft.com/en-us/java/openjdk/download |
| Laragon | Edicion Full | https://laragon.org/download/index.html |

Antes de realizar la ejecución del proyecto, debe realizar las siguientes intrucciones.
1. Tener instalado las herramientas mencionadas en la anterior tabla.
2. Clonar el repositorio con el comando 

` git clone https://github.com/HernanVelasquz/Laboratorio-Java.git `

3. Ejecutar el servidor de larago, e irse al direcotorio situado en la ruta 

` src/main/java/conexion/BasedeDatos.sql`

El cual contiene el script de la estructura de la basase de datos y la informacion que tiene cada tablas. 

4. Al tener los pasos anteriores realizados, debe agregar el controlador de myql para java, debido que sin este driver el programa generara un error al momento de ejecutar el codigo y utilizar la base de datos. Para realizar este paso, le recomiendo el siguiente link de Youtube <a href="https://www.youtube.com/watch?v=h6xwRwlFypM&t=176s">Link del Video</a>.

5. En trar al proyecto, ubicar el directorio de conexion, el cual se encuentra en la siguiente ruta: 
` src/main/java/Conexion `
Y en el archivo de propiedades se deben modificar las credenciales de acceso, las cuales se encuentran definidas en la interfaz de nombre <b>Propiedades</b> y cambiarlas por las que usted tenga definida en su maquina.

<b>Nota: Si dejo las configuraciones por defecto de Laragon, deje las credenciales tal cual como se encuentran en el Archivo. </b>

6. Para finalizar, dirijase al paquete Main, el cual se encuentra en la ruta:
`src/main/java/Conexion`
Y ejecute el archivo de nombre <b>Principal</b> el cual realiara la inicializacion del juego y permitira que ejecute todo sin problemas. 

<b>Nota: Para finaliar, en el siguiente enlace se encuentra el video
sustentacion de los integrantes que desarrollaron el reto. <a href="https://www.youtube.com/watch?v=25uKzj8zSOE&list=PLPazevQowqh65_rdebabaC-WeKFbtmu7O&index=3">Link de video de sustentacion</a></b>


## Desarrolladores
> Hernan Velasquez

> Alvaro Vega 