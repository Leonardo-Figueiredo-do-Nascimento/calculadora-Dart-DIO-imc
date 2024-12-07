import 'package:calculadora_imc/CalcularIMC.dart';
import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;
import 'dart:io';

import 'package:calculadora_imc/classes/Pessoa.dart';

void main(List<String> arguments) {
  
  print("Qual o seu nome?");
  String? nome = stdin.readLineSync(); // Entrada do nome

  print("Qual o seu peso (em kg)?");
  String? pesoInput = stdin.readLineSync();
  double? peso = double.tryParse(pesoInput ?? ''); // Converte o peso para double

  print("Qual a sua altura (em metros)?");
  String? alturaInput = stdin.readLineSync();
  double? altura = double.tryParse(alturaInput ?? ''); // Converte a altura para double

  // Validação para evitar valores nulos
  if (nome == null || peso == null || altura == null) {
    print("Entradas inválidas! Tente novamente.");
    return;
  }

  // Criando a instância de Pessoa
  Pessoa pessoa = Pessoa(nome, peso, altura);
  print("-----IMC------");

  print(calcularIMC(pessoa.getPeso(), pessoa.getAltura()));

}
