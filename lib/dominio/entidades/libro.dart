import 'dart:html';

import 'package:equatable/equatable.dart';

class Libro extends Equatable {
  final int? id;
  final String nombre;

  Libro({required this.nombre, this.id});

  @override
  List<Object?> get props => [id, nombre];
}

class Usuario {
  final int dni, telefono;
  final String nombre, apellido, email;

  Usuario(
      {required this.dni,
      required this.telefono,
      required this.nombre,
      required this.apellido,
      required this.email});
}

class MovimientoDeBiblioteca {
  final DateTime? fecha;
  final Usuario usuario;
  final Libro libro;
  final bool esDevolucion;

  MovimientoDeBiblioteca(
      {DateTime? fecha,
      required this.usuario,
      required this.libro,
      required this.esDevolucion})
      : fecha = fecha ?? DateTime.now();
}
