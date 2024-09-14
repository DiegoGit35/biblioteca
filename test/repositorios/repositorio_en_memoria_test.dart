import 'package:biblioteca/data/adaptadores/adaptador_de_biblioteca_memoria.dart';
import 'package:biblioteca/dominio/entidades/libro.dart';
import 'package:biblioteca/dominio/repositorio/repositorio_biblioteca.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  RepositorioBiblioteca adaptador = AdaptadorBibliotecaMemoria();

  final libroTest = Libro(nombre: "Harry Potter y la piedra filosofal");
  final usuarioTest = Usuario(
      apellido: "Rodriguez",
      nombre: "Marta",
      dni: 15454325,
      email: "asdfjkadjfk@gmail.com",
      telefono: 12154548784);

  test('deberia almacenar un libro en memoria', () async {
    // await Future.delayed();
    final result = adaptador.agregarLibro(libroTest);

    expect(result, libroTest);
  });

  test('deberia traer los libros almacenados en memoria', () {
    List<Libro> lista = [];
    final result = adaptador.todoLosLibros();
    expect(result, lista);
  });

  test('deberia cargar y traer un libro de memoria', () {
    List<Libro> lista = [];
    lista.add(libroTest);
    adaptador.agregarLibro(libroTest);
    final result = adaptador.todoLosLibros();

    expect(result, lista);
  });

  test('deberia almacenar un movimiento como una devolucion', () {
    MovimientoDeBiblioteca nuevoMovimiento = MovimientoDeBiblioteca(
        usuario: usuarioTest, libro: libroTest, esDevolucion: true);
    adaptador.agregarMovimiento(nuevoMovimiento);
  });
}
