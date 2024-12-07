import 'package:calculadora_imc/CalcularIMC.dart';
import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test("Teste do IMC", (){
    expect(calcularIMC(70, 1.80), "Seu IMC é 40.00 | Obesidade 3.");
  });
}
