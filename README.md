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


# android
TIP: para evitar que el statusBar de Android se vea con un color más oscuro, habitual en este SO, podemos agregar al final de la clase MainActivity del archivo MainActivity.kt (ubicado en la carpeta src/main/kotlin/), la siguiente línea de código:

this.getWindow().statusBarColor(android.graphics.Color.TRANSPARENT);

...
import 'package:flutter/services.dart';
...
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    ...
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light
    )
  );
  runApp(MyApp());
} 

## usar el scroll en pc

crear un widget:

```dart

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}



child: ScrollConfiguration(
          behavior: MyCustomScrollBehavior(),
          child: ListView(
              padding: EdgeInsets.only(top: 20, left: 0, right: 40, bottom: 20),
              scrollDirection: Axis.horizontal,
              children: [
                CardImg("assets/img/pags/01.jpg"),
                CardImg("assets/img/pags/02.jpg"),
                CardImg("assets/img/pags/03.jpg"),
                CardImg("assets/img/pags/04.jpg"),
                CardImg("assets/img/pags/01.jpg"),
                CardImg("assets/img/pags/01.jpg"),
                CardImg("assets/img/pags/01.jpg"),
              ]),
        ));

```



# BlocProvider 
[install](https://pub.dev/packages/generic_bloc_provider/install)

```dart

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return BlocProvider (
            bloc: AppBloc(),
            child: MaterialApp(
                title: 'Yo Sleep',
                home: MainPage(),
                initialRoute: ‘main’,
                routes: {
                    'main': (context) => MainPage(),
                }
            ),
        );
    }
}```

