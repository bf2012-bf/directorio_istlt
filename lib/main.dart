import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'docente.dart';
import 'directorioscreen.dart';
 
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(DocenteAdapter());
  await Hive.openBox<Docente>('docentes');
  runApp(const MainApp());
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
    Docente(nombres: "Cecilia", apellidos: "Naula", carrera: "DAW", nivelEstudio: "Mtr.",),
    Docente(nombres: "Cecilia", apellidos: "Naula", carrera: "DAW", nivelEstudio: "Mtr.",),
  ];

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DirectorioScreen());
  }
}
