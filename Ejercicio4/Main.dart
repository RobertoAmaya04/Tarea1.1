import 'Coche.dart';

void main() {
  Coche coche1 = Coche("Toyota", "Corolla");
  Coche coche2 = Coche("Hyundai", "Elantra", anio: 2008, color: "azul");

  print("Detalles del coche 1:");
  mostrarDetalles(coche1, true);
  print("");
  print("Detalles del coche 2:");
  mostrarDetalles(coche2, true);
  print("");
  print("Detalles del coche 1 (Sin color):");
  mostrarDetalles(coche1, false);
  print("");
  print("Detalles del coche 2 (Sin color):");
  mostrarDetalles(coche2, false);
}

void mostrarDetalles(Coche coche, bool incluirColor) {
  print(
    "Marca: ${coche.marca}, Modelo: ${coche.modelo}, Anio: ${coche.anio}${(incluirColor) ? ", Color: ${coche.color}" : ""}",
  );
}
