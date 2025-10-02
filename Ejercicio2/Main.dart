void main() {
  Map<int, Map<String, dynamic>> inventario = {};
  inventario[1111] = {
    "nombre": "Coca Cola 1.1 litros",
    "cantidad": 10,
    "precio": 32.0,
  };
  inventario[1112] = {"nombre": "Xedex", "cantidad": 3, "precio": 21.0};
  inventario[1113] = {"nombre": "Maseca", "cantidad": 0, "precio": 13.0};

  print("Inventario inicial:");
  print(inventario);
  print("");
  actualizarCantidad(inventario, 1113, 10);
  print("Inventario final:");
  print(inventario);
  print("");
  print("Valor total del inventario: ${calcularValorTotal(inventario)}");
}

void actualizarCantidad(
  Map<int, Map<String, dynamic>> inv,
  int id,
  int nuevaCantidad,
) {
  inv[id]?["cantidad"] = nuevaCantidad;
}

double calcularValorTotal(Map<int, Map<String, dynamic>> inv) {
  var keys = inv.keys;
  double sum = 0;

  for (int i = 0; i < inv.length; i++) {
    sum +=
        inv[keys.elementAt(i)]?["cantidad"] * inv[keys.elementAt(i)]?["precio"];
  }
  return sum;
}

void imprimirInventario(Map<int, Map<String, dynamic>> inv) {
  print(inv);
}
