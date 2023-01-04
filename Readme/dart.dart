//  variables
void variables() {
  var str = "hola";
  print(str);
  str = "now hola";
  print(str);

  // str = 1;
  // print(str);

  final inte = "1";
  print(inte);

  dynamic dinamico = "1";
  dinamico = 1;
  dinamico = ["1", 2];
  print(dinamico);

  //  numericos

  int i1 = 1;
  // usado como methodo
  i1++; // aumenta
  i1--; // disminuye

  // usado para la asignacion
  ++i1; // aumenta
  --i1; // disminuye

  var v1 = 1;
  var v2 = v1++; // solo modifica la variable anterior
  var v3 =
      ++v1; // asigana el valor de la variable final a la varable a declarar

  print(v1); // 3
  print(v2); // 1
  print(v3); // 3

// STRING
  var itp = "asi $v1 ";
  var itp2 = r"asi  $v1  ";
  var itp3 = "asi   ";

  var salto = "arriba \$v1 \" \ny abajo $v1";

  //   la ejecucion de los metodos solo se hace para la linea,
  itp2.toLowerCase();
//   para transformar las variables  hay que reasignarlas
  itp2 = itp2.toLowerCase();

  itp2.replaceAll("algo", "otro");
}

// for
void main() {
  // for comun
  void main() {
    for (int i = 0; i < 5; i++) {
      print('hello ${i + 1}');
    }
  }

  // for para iterables
  for (final object in ["hola mundo", "algo"]) {
    print(object);
  }

  for (var i = 0; i < 5; i++) {}
  ;
}

// es como una funcion que se ejecuta afuera
enum cosa { variable1, variable2 }

void colecciones() {
  //   colecciones
  List lista = ["uno", 2];
  lista[1]; // es la forma de ubicar por index

  //  set las propiedads no se pueden repitir, y son elementos del mismo tipo
  Set<String> seteo = {"uno", "dos"};
  seteo.elementAt(1); // es la forma de ubicar por index

  //   mapa o conocido como diccionario o objeto
  Map<dynamic, dynamic> diccionario = {1: "hola mundo", "key2": "hola mundo2"};
  print("$diccionario[1]");
  print(diccionario[1]);
  print(diccionario["key2"]);

  // concatenar
  lista.add([1]); // agrega al final
  print(lista);
  lista.addAll(seteo); // agrega al final todos los elemento de otra coleccion
  print(lista);

//   metodo 2

  List newlist = [seteo, ...lista];
  print(newlist);

//   funciones dentro de colecciones

  List conif = [
    "uno",
    if (true) "se agrega",
    if (false) "no se eagrega",
    for (int i = 0; i < 5; i++) i
  ];
  print(conif);
}
