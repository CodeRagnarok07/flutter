# Arquitectura de software
Se refiere a la organización de un sistema, la cual pudiera estar compuesta de componentes que interactúa las unas con las otras generando un entorno de operación y principios de diseño.

.
El objetivo principal de las arquitecturas de software va más allá de su diseño u organización, es el soportar su propia evolución a lo largo del tiempo conllevando su optimización en su misma individualidad.
.

# Composición de una Arquitectura de software
Desde el punto de vista técnico, este concepto está dividido en diferentes abstracciones que, en conjunto, conoceríamos como Frameworks, patrones de diseño y buenas prácticas:
.

### Folder Design. 
    Referido a la capada donde residirá nuestro código, desde la configuración hasta la nomenclatura de la misma.

### Structure Design.
     Referida a la concepción misma del código y sus diferentes interconexiones. Algunos patrones o diseños pudieran estar reflejados por su misma estrategia (MVC, MVVM, etc.), su manejo de estado (BLoC, MobX, Redux, etc.) o establecido por pedazos de patrones conocidos (Singleton, Strategy, Builder, etc.).
### Delivery Design.
     Relacionada con la manera en que los sistemas estás distribuidos o, incluso, definidos en su construcción ( CI / CD ).


# Tipos de Arquitecturas para Flutter

### Vanilla
En esta arquitectura la lógica y la vista se colocan en el Widget. Su principal beneficio es que es simple y autónoma. Conectado en cualquier parte de tu aplicación, recuperará y renderizará datos.

Por otro lado, escribir widgets de esta manera puede generar caos en el documento de vista de la app, sobre todo cuando la lógica empieza a extenderse a bifurcarse o es más avanzado.

```dart
Widget _buildInit() {
    return Center(
      child: RaisedButton(
        child: const Text('Load user data'),
        onPressed: () {
          setState(() {
            _isLoading = true;
          });
          widget._repository.getUser().then((user) {
            setState(() {
              _user = user;
              _isLoading = false;
            });
          });
        },
      ),
    );
  }
```


No te recomiendo mucho usar este tipo de Arquitectura pues aunque es fácil de aprender en realidad rómpe con uno de los principios SOLID que deben seguir todas las arquitecturas. Single Responsability la cuál dice que una clase debe tener solo una responsabilidad. En este caso la vista y el controlador son dos responsabilidades que están cayendo en la misma clase.

### Scoped Model

Este es una librería de terceros Puedes encontrar toda la información aquí que no está incluída. Es extraída del código base del Sistema operativo Fuchsia.

```dart
Widget _buildInit(UserModel userModel) {
    return Center(
      child: RaisedButton(
        child: const Text('Load user data'),
        onPressed: () {
          userModel.loadUserData();
        },
      ),
    );
}
```


En esta arquitectura cuando un Widget cambia de estado se reconstruye el árbol completo (Toda la pantalla). En realidad esto no es tan conveniente pues lo que quisiéramos que sucediera idealmente es reconstruir solo el widget que está cambiando y no los otros.

Esta arquitectura es buena pues cumple con el Principio de Single Responsability pues separa la lógica del negocio de la UI, pero en general el mantenimiento de este se vuelve complejo por la grande dependencia entre Widgets, debes controlar muchos casos para lograr el efecto que quires dar a tu aplicación.


## BLoC 
BLoC significa Business Logic Components, es un patrón de diseño que separa la lógica de negocio de la interfaz gráfica.

BLoC Pattern:

View (UI Screen): Contendrá toda la interacción con las vistas; podemos organizarla en screens y widgets.

BLoC: La capa de negocio estará contenida aquí, por ejemplo: registrarse a la aplicación, hacer login o hacer logout; toda vista que tenga una lógica de negocio deberá tener un componente BLoC.

Repository: Aquí se concentran las clases que se conectan con una fuente de datos; API, Endpoints, DataBase, etc.

Data / Model: Son nuestros modelos, los cuales nos ayudan a manejar los datos; PODO Plain Old Dart Object