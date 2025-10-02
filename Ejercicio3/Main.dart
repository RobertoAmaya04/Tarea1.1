void main() {
  List<Map<String, String>> agenda = [];
  agenda.add({
    "nombre": "Jarex Amador",
    "telefono": "981239032",
    "email": "eli.932@gmail.com",
  });
  agenda.add({
    "nombre": "Eduardo Rodríguez",
    "telefono": "91927140",
    "email": "eduardo.rodriguez@gmail.com",
  });
  agenda.add({
    "nombre": "Roberto Amaya",
    "telefono": "97114858",
    "email": "rcamaya@unah.hn",
  });

  print("Contacto encontrado: ${buscarContacto(agenda, "Jarex Amador")}");
  print("");
  eliminarContacto(agenda, "Jarex Amador");
  print("");
  print("Objeto eliminado: ${buscarContacto(agenda, "Jarex Amador")}");
}

Map<String, String>? buscarContacto(List agenda, String nombrePosicion) {
  for (int i = 0; i < agenda.length; i++) {
    if (agenda[i]?["nombre"] == nombrePosicion) {
      return agenda[i];
    }
  }
  return null;
}

void eliminarContacto(List agenda, String nombreEliminar) {
  if (buscarContacto(agenda, nombreEliminar) != null) {
    agenda.remove(buscarContacto(agenda, nombreEliminar));
    print("Objeto removido correctamente");
  } else
    print("Objeto no encontrado");
}
