import 'package:flutter/material.dart';
import 'docente.dart';
import 'docenteTile.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final List<Docente> listaDocentes = [
    Docente(nombres: "Israel", apellidos: "Zurita", carrera: "DAW", nivelEstudio: "Ing.",),
    Docente(nombres: "Angel", apellidos: "Novillo", carrera: "DAW", nivelEstudio: "Msg.",),
    Docente(nombres: "Cecilia", apellidos: "Naula", carrera: "DAW", nivelEstudio: "Mtr.",),
    Docente(nombres: "Cristian", apellidos: "Durán", carrera: "DAW", nivelEstudio: "Ing.",),
    Docente(nombres: "María", apellidos: "Delgado", carrera: "DAW", nivelEstudio: "Ing.",),
    Docente(nombres: "Pablo", apellidos: "Reyes", carrera: "DAW", nivelEstudio: "Ing.",),
    Docente(nombres: "Jonh", apellidos: "Melendez", carrera: "DAW", nivelEstudio: "Ing.",),
    Docente(nombres: "Arturo", apellidos: "Palacios", carrera: "Producción Agrícola", nivelEstudio: "Ing.",),
  ];

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
        body: ListView.separated(
          padding: EdgeInsets.all(16),
          itemCount: listaDocentes.length,
          separatorBuilder: (context, index) => Divider(
            height: 20.0,
            color: Colors.amber,
          ),
          itemBuilder: (context, index) {
            return DocenteTile(docente: listaDocentes[index]);
          },
        ),
      ),
    );
  }
}