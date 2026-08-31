import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'docente.dart';

late Box<Docente> _caja;

class DirectorioScreen extends StatefulWidget {
  const DirectorioScreen({super.key});
  @override
  State<DirectorioScreen> createState() => _DirectorioScreenState();
}
 
class _DirectorioScreenState extends State<DirectorioScreen> {
  // late Box<Docente> _caja;
 
  @override
  void initState() {
    super.initState();
    _caja = Hive.box<Docente>('docentes');
    _sembrarDatos(); // datos iniciales solo la primera vez
  }
 
  void _sembrarDatos() {
    if (_caja.isEmpty) {
      _caja.addAll([
        Docente(nombres: "Israel", apellidos: "Zurita", carrera: "DAW", nivelEstudio: "Ing.",),
        Docente(nombres: "Angel", apellidos: "Novillo", carrera: "DAW", nivelEstudio: "Msg.",),
        Docente(nombres: "Cecilia", apellidos: "Naula", carrera: "DAW", nivelEstudio: "Mtr.",),
        Docente(nombres: "Cristian", apellidos: "Durán", carrera: "DAW", nivelEstudio: "Ing.",),
        Docente(nombres: "María", apellidos: "Delgado", carrera: "DAW", nivelEstudio: "Ing.",),
        Docente(nombres: "Pablo", apellidos: "Reyes", carrera: "DAW", nivelEstudio: "Ing.",),
        Docente(nombres: "Jonh", apellidos: "Melendez", carrera: "DAW", nivelEstudio: "Ing.",),
        Docente(nombres: "Arturo", apellidos: "Palacios", carrera: "Producción Agrícola", nivelEstudio: "Ing.",),
      ]);
    }
  }
 
  // void _agregarDocente() { // CREATE
  //   _caja.add(Docente(nombres: 'Nuevo', apellidos: 'Docente',
  //       nivelEstudio: 'Ing.', carrera: 'DAW'));
  // }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 214, 240),
      appBar: AppBar(
        title: const Text('Directorio IST La Troncal'),
        backgroundColor: const Color.fromARGB(255, 22, 90, 227),
        foregroundColor: const Color.fromARGB(255, 236, 198, 46),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() async {
          final Docente? docente = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AgregarDocente(),),
          );
          if (docente != null) {
            setState(() {
              _caja.add(docente);
            });
          }
        },//_agregarDocente,
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
            separatorBuilder: (_, _) => const Divider(
              color: Colors.amber,
            ),
            itemBuilder: (context, index) {
              final d = caja.getAt(index)!;
              return ListTile(
                // hoverColor: Colors.black,
                leading: const Icon(Icons.person, color: Colors.blue),
                title: Text('${d.nivelEstudio} ${d.nombres} '
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

class AgregarDocente extends StatefulWidget {
  const AgregarDocente({super.key});

  @override
  State<AgregarDocente> createState() => _AgregarDocenteState();
}

class _AgregarDocenteState extends State<AgregarDocente> {

final TextEditingController _nombreController = TextEditingController();
final TextEditingController _apellidoController = TextEditingController();
final TextEditingController _nivelEstudioController = TextEditingController();
final TextEditingController _carreraController = TextEditingController();

void _agregarDocente() {
  final String nombre = _nombreController.text.trim();
  final String apellido = _apellidoController.text.trim();
  final String nivelEstudios = _nivelEstudioController.text.trim();
  final String carreraa = _carreraController.text.trim();

  // Validamos que los campos no estén vacíos
  if (nombre.isNotEmpty && apellido.isNotEmpty) {
      final nuevoDocente = Docente(nombres: nombre, apellidos: apellido, nivelEstudio: nivelEstudios, carrera: carreraa);
      Navigator.pop(context, nuevoDocente);
  }
}

@override
  void dispose() {
    // Liberamos los controladores al destruir el widget
    _nombreController.dispose();
    _apellidoController.dispose();
    _nivelEstudioController.dispose();
    _carreraController.dispose();
    super.dispose();
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Docente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Campo Nombre
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(
                labelText: 'Nombres:',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            
            // Campo Apellido
            TextField(
              controller: _apellidoController,
              decoration: InputDecoration(
                labelText: 'Apellidos:',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Campo Nivel Estudios
            TextField(
              controller: _nivelEstudioController,
              decoration: InputDecoration(
                labelText: 'Nivel de Estudios:',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Campo Carrera
            TextField(
              controller: _carreraController,
              decoration: InputDecoration(
                labelText: 'Carrera:',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Botón para agregar
            ElevatedButton(
              onPressed: _agregarDocente,
              child: Text('Guardar'),
            ),
            SizedBox(height: 20),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}