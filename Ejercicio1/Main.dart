import 'Empleado.dart';

void main() {
  //Declaracion de lista de empleados vacia
  List<Empleado> empleados = [];

  //Llenado de lista con la informacion de 3 empleados
  empleados.add(new Empleado("Roberto Amaya", 1329324, 10000.00));
  empleados.add(new Empleado("Natanael Cano", 2319903, 20000.00));
  empleados.add(new Empleado("Conrado Tomillo", 8419012, 30000.00));

  ejecutarAumentoImpresion(empleados, 0.12);
}

// funcion que aumenta el salario cierto porcentaje de una lista de empleados
void aumentarSalario(List<Empleado> empleados, {required double porcentaje}) {
  for (int i = 0; i < empleados.length; i++) {
    empleados[i].salario += empleados[i].salario * porcentaje;
  }
}

//funcion que imprima un objeto con todos sus atributos
void imprimirEmpleado(List<Empleado> empleados) {
  for (int i = 0; i < empleados.length; i++) {
    print(
      'Empleado: ${empleados[i].nombre}, ID: ${empleados[i].id}, Salario: ${empleados[i].salario}',
    );
  }
}

void ejecutarAumentoImpresion(List<Empleado> empleados, double pctj) {
  print('Antes del aumento');
  imprimirEmpleado(empleados);
  print('');
  aumentarSalario(empleados, porcentaje: pctj);
  print('Despues del aumento');
  imprimirEmpleado(empleados);
}
