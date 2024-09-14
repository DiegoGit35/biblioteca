import 'dart:core';

import 'package:biblioteca/dominio/entidades/libro.dart';
import 'package:biblioteca/dominio/repositorio/repositorio_biblioteca.dart';

class AdaptadorBibliotecaMemoria implements RepositorioBiblioteca {
  static List<Usuario> usuarios = [];
  static List<Libro> libros = [];
  static List<MovimientoDeBiblioteca> movimientos = [];

  @override
  Libro agregarLibro(Libro nuevoLibro) {
    libros.add(nuevoLibro);
    return nuevoLibro;
  }

  @override
  agregarMovimiento(MovimientoDeBiblioteca nuevoMovimiento) {
    // if(nuevoMovimiento.esDevolucion == true)
    movimientos.add(nuevoMovimiento);
  }

  @override
  Usuario agregarUsuario(Usuario nuevoUsuario) {
    usuarios.add(nuevoUsuario);
    return nuevoUsuario;
  }

  @override
  List<Libro> todoLosLibros() {
    return libros;
  }

  @override
  List<Libro> todosLosLibrosNoDevueltos() {
    List<Libro> librosPorDevolver = [];
    for (var movimiento in movimientos) {
      if (movimiento.esDevolucion == false)
        librosPorDevolver.add(movimiento.libro);
    }
    return librosPorDevolver;
  }

  @override
  List<Usuario> todosLosUsuarios() {
    return usuarios;
  }
}
