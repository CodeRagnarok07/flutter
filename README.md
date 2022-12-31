# [online documentation](https://docs.flutter.dev/)

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)



<details>
    <summary>Dart sintaxis</summary>
    <img src="./Readme/dart.jpg" alt="">
    <!-- ![1](./Readme/dart.jpg) -->

</details>



<br/>
<br/>

# directorios

### [flutter_app/](./flutter_app/) : 
carpeta raíz del proyecto, donde además crearemos entre otras cosas las carpetas donde guardaremos nuestros recursos o assets de la aplicación.
### [android/](./android/) :
aquí se almacenarán todos los archivos que corresponden a un proyecto Android. Es en esta ubicación donde se encontrarán los archivos de configuración y demás recursos que pudiéramos querer retocar o modificar en Android Studio para comportamientos particulares de la app en esta plataforma, como el FlutterActivity o el AndroidManifest.

### [ios/](./ios/) :
similarmente, aquí se almacenarán todos los archivos que corresponden al sistema operativo iOS. Es en esta ubicación donde se encontrarán los archivos de configuración y otros que pudiéramos querer retocar o ajustar en XCode para comportamientos específicos relacionados con esta plataforma, como el FlutterAppDelegate o el info.plist, entre otros.

### [lib/](./lib/) :
es aquí donde encontramos todos los archivos que corresponden a nuestro proyecto con Dart y donde vive la aplicación Flutter. Todos los archivos que estaremos generando durante el curso se almacenarán en esta carpeta.

### [pubspec.yaml/](./pubspec.yaml) :
Hay un archivo especial llamado pubspec.yaml donde se guardan las configuraciones del proyecto. Este archivo está escrito en el lenguaje YAML, que es un formato de serialización de datos legible por humanos inspirado en XML. En este archivo tendremos que declarar todos los recursos externos o assets que vamos a utilizar en nuestro proyecto como: fuentes de letras, imágenes, etc.

# estructura de codigo 

1. el método main() será el punto de inicio de nuestra aplicación.
2. runApp() es la función que inicializa y da vida a la aplicación definida por el Widget App. En otras palabras, runApp() toma el widget y lo sirve.

3. App() es la clase principal que representa la raíz de la aplicación. Esta clase extiende o hereda de StatelessWidget que es la clase padre de todos los widgets. 

4. App() posee un método heredado llamado build() encargado de construir o mostrar todo el árbol de widgets anidados (o Widgets tree) que hayamos definido con MaterialApp(), que es la clase (que actúa wrapper) que implementa Flutter para dar vida, forma y apariencia a todos los widgets de nuestra interfaz de usuario.

La propiedad fundamental del widget MaterialApp en la que definimos toda la estructura base de nuestra aplicación es home: a la que a su vez asignamos el widget Home() de tipo StatefulWidget que es la parte funcional de nuestra aplicación y que retornará a fin de cuentas un Scaffold() que es el widget que contiene finalmente toda la estructura de nuestra interfaz.

// --- Estructura estándar de un Scaffold
....
return Scaffold(
  appBar:               , // --- barra de título
  body:                 , // --- contenido principal
  bottomNavigationBar:  , // --- navigación
  floatingActionButton:   // --- botón de acción
)
...


# trucos en vscode

### hot autoreload
ejecuta el codigo con f5 y en la barra superior click en "open inspector page"


# [widgets](https://docs.flutter.dev/development/ui/widgets)


Text: representa un texto o cadena de caracteres. Admite diversos parámetros o propiedades, además del texto literal que será mostrado. Podemos definirle estilos y características de apariencia particulares.

Row: permite organizar y posicionar otros widgets hijos en forma de fila o renglón.

Column: permite organizar y posicionar otros widgets hijos en forma de columna.

Stack: permite apilar widgets hijos con respecto al eje Z (elevación) en la interfaz.

Container: es uno de los widgets más versátiles de Flutter y permite organizar otros widgets como si fuera una caja o contenedor. Este widget es equivalente a los divs de html y admiten atributos similares de apariencia.

### StatefulWidget:
Drawer
FloatingActionButton

### StatelessWidget:
- ListView
- Text
- CircleAvatar
- Image
- Container
- Row
- Column