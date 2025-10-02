void main() {
  Map<String, List<double>> notasEstudiantes = {};
  notasEstudiantes["Jose Estevez"] = [65, 78, 91, 71];
  notasEstudiantes["Roberto Amaya"] = [99, 95, 100, 87];
  notasEstudiantes["Amehd Mendez"] = [90, 93, 98, 71];
  notasEstudiantes["Nidia Trochez"] = [81, 92, 90, 69];

  var keys = notasEstudiantes.keys;
  print(
    "Promedio de ${keys.elementAt(0)}: ${calcularPromedio(notasEstudiantes[keys.elementAt(0)]!)}",
  );
  print(
    "Promedio de ${keys.elementAt(1)}: ${calcularPromedio(notasEstudiantes[keys.elementAt(1)]!)}",
  );
  print(
    "Promedio de ${keys.elementAt(2)}: ${calcularPromedio(notasEstudiantes[keys.elementAt(2)]!)}",
  );
  print(
    "Promedio de ${keys.elementAt(3)}: ${calcularPromedio(notasEstudiantes[keys.elementAt(3)]!)}",
  );
  print("");
  print(
    "El mejor estudiantes es: ${obtenerMejorEstudiante(notasEstudiantes)} con un promedio de: ${calcularPromedio(notasEstudiantes[obtenerMejorEstudiante(notasEstudiantes)]!)}",
  );
}

double calcularPromedio(List<double> notas) {
  double sum = 0;
  for (int i = 0; i < notas.length; i++) sum += notas[i];

  return sum / notas.length;
}

String obtenerMejorEstudiante(Map<String, List<double>> estudiantes) {
  var keys = estudiantes.keys;
  String mejor = keys.elementAt(0);

  for (int i = 1; i < estudiantes.length; i++) {
    if (calcularPromedio(estudiantes[mejor]!) <
        calcularPromedio(estudiantes[keys.elementAt(i)]!))
      mejor = keys.elementAt(i);
  }
  return mejor;
}
