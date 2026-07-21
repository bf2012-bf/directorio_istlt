import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Directorio IST La Troncal"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.amber,
        ),
        body: ListView(
          children: [
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Israel Zurita"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Angel Novillo"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
            ListTile(
              trailing: Icon(Icons.star, color:  Color.fromARGB(255, 185, 194, 211)),
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
            ),
          ],
        ),
      ),
    );
  }
}
