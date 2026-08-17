import 'package:flutter/material.dart';
import 'docente.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  Docente docente1 = Docente(
    nombres: "Israel",
    apellidos: "Zurita",
    carrera: "DAW",
    nivelEstudio: "Ing.",
  );

  List<Docente> listaDocentes = [
    Docente(
    nombres: "Israel",
    apellidos: "Zurita",
    carrera: "DAW",
    nivelEstudio: "Ing.",
  ),
  Docente(
    nombres: "Angel",
    apellidos: "Novillo",
    carrera: "DAW",
    nivelEstudio: "Msg.",
  ),
  Docente(
    nombres: "Cecilia",
    apellidos: "Naula",
    carrera: "DAW",
    nivelEstudio: "Mtr.",
  )
  ];

  int indiciDocentes = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Directorio IST La Troncal")),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.amber,
        ),
        body: ListView(
        padding: EdgeInsets.all(10),
          children: [
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("${docente1.nivelEstudio} ${docente1.nombres} ${docente1.apellidos}"),
              subtitle: Text("${docente1.carrera} "),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text(
                "${listaDocentes[indiciDocentes].nivelEstudio} ${listaDocentes[indiciDocentes].nombres} ${listaDocentes[indiciDocentes].apellidos}"
              ),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text(
                "${listaDocentes[indiciDocentes].nivelEstudio} ${listaDocentes[indiciDocentes].nombres} ${listaDocentes[indiciDocentes].apellidos}"
              ),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
