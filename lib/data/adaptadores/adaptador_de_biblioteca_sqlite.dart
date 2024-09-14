import 'package:biblioteca/dominio/entidades/libro.dart';
import 'package:biblioteca/dominio/repositorio/repositorio_biblioteca.dart';

class AdaptadorDeBibliotecaSqlite implements RepositorioBiblioteca {
  @override
  agregarLibro(Libro nuevoLibro) {
    // TODO: implement agregarLibro
    throw UnimplementedError();
  }

  @override
  agregarMovimiento(MovimientoDeBiblioteca nuevoMovimiento) {
    // TODO: implement agregarMovimiento
    throw UnimplementedError();
  }

  @override
  agregarUsuario(Usuario nuevoUsuario) {
    // TODO: implement agregarUsuario
    throw UnimplementedError();
  }

  @override
  List<Libro> todoLosLibros() {
    // TODO: implement todoLosLibros
    throw UnimplementedError();
  }

  @override
  List<Libro> todosLosLibrosNoDevueltos() {
    // TODO: implement todosLosLibrosNoDevueltos
    throw UnimplementedError();
  }

  @override
  List<Usuario> todosLosUsuarios() {
    // TODO: implement todosLosUsuarios
    throw UnimplementedError();
  }
}
