import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'docente.dart';

class DirectorioScreen extends StatefulWidget {
  const DirectorioScreen({super.key});
  @override
  State<DirectorioScreen> createState() => _DirectorioScreenState();
}
 
class _DirectorioScreenState extends State<DirectorioScreen> {
  late Box<Docente> _caja;
 
  @override
  void initState() {
    super.initState();
    _caja = Hive.box<Docente>('docentes');
    _sembrarDatos(); // datos iniciales solo la primera vez
  }
 
  void _sembrarDatos() {
    if (_caja.isEmpty) {
      _caja.addAll([
        Docente(nombres: "Israel", apellidos: "Zurita", carrera: "DAW", nivelEstudios: "Ing.",),
        Docente(nombres: "Angel", apellidos: "Novillo", carrera: "DAW", nivelEstudios: "Msg.",),
        Docente(nombres: "Cecilia", apellidos: "Naula", carrera: "DAW", nivelEstudios: "Mtr.",),
        Docente(nombres: "Cristian", apellidos: "Durán", carrera: "DAW", nivelEstudios: "Ing.",),
        Docente(nombres: "María", apellidos: "Delgado", carrera: "DAW", nivelEstudios: "Ing.",),
        Docente(nombres: "Pablo", apellidos: "Reyes", carrera: "DAW", nivelEstudios: "Ing.",),
        Docente(nombres: "Jonh", apellidos: "Melendez", carrera: "DAW", nivelEstudios: "Ing.",),
        Docente(nombres: "Arturo", apellidos: "Palacios", carrera: "Producción Agrícola", nivelEstudios: "Ing.",),
      ]);
    }
  }
 
  void _agregarDocente() { // CREATE
    _caja.add(Docente(nombres: 'Nuevo', apellidos: 'Docente',
        nivelEstudios: 'Ing.', carrera: 'DAW'));
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Directorio IST La Troncal'),
        backgroundColor: const Color.fromARGB(255, 22, 90, 227),
        foregroundColor: const Color.fromARGB(255, 236, 198, 46),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _agregarDocente,
        backgroundColor: const Color.fromARGB(255, 22, 90, 227),
        child: Icon(
          Icons.add,
          color: Colors.yellow,
          ),
      ),
      body: ValueListenableBuilder(          // READ reactivo
        valueListenable: _caja.listenable(),
        builder: (context, Box<Docente> caja, _) {
          if (caja.isEmpty) {
            return const Center(child: Text('No hay docentes.'));
          }
          return ListView.separated(
            padding: const EdgeInsets.all(18),
            itemCount: caja.length,
            separatorBuilder: (_, _) => const Divider(),
            itemBuilder: (context, index) {
              final d = caja.getAt(index)!;
              return ListTile(
                leading: const Icon(Icons.person, color: Colors.blue),
                title: Text('${d.nivelEstudios} ${d.nombres} '
                    '${d.apellidos}'),
                subtitle: Text(d.carrera),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(                 // UPDATE
                      icon: Icon(d.esFavorito
                          ? Icons.star : Icons.star_border,
                          color: d.esFavorito
                              ? Colors.amber : Colors.grey),
                      onPressed: () {
                        d.esFavorito = !d.esFavorito;
                        d.save();
                      },
                    ),
                    IconButton(                 // DELETE
                      icon: const Icon(Icons.delete,
                          color: Colors.red),
                      onPressed: () => d.delete(),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
