import '../entidades/libro.dart';

abstract class RepositorioBiblioteca {
  Libro agregarLibro(Libro nuevoLibro);
  Usuario agregarUsuario(Usuario nuevoUsuario);
  List<Libro> todoLosLibros();
  List<Usuario> todosLosUsuarios();
  agregarMovimiento(MovimientoDeBiblioteca nuevoMovimiento);
  List<Libro> todosLosLibrosNoDevueltos();
}
