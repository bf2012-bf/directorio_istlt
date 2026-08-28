import 'package:hive_ce/hive.dart';

part 'docente.g.dart';

@HiveType(typeId: 0)
class Docente extends HiveObject {
  @HiveField(0)
  String nombres;

  @HiveField(1)
  String apellidos;

  @HiveField(2)
  String carrera;

  @HiveField(3)
  String nivelEstudio;

  @HiveField(4)
  bool esFavorito;

  String cargo;

  bool activo;

  Docente({
    required this.nombres,
    required this.apellidos, 
    required this.carrera,
    required this.nivelEstudio,
    this.esFavorito = false,
    this.cargo = "por definir",
    this.activo = true,
    }
  );
}