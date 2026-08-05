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
              title: Text("Ing. Angel Novillo"),
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
