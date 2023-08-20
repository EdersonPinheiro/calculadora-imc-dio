import 'dart:io';

import 'package:calculadora_imc/model/pessoa.dart';

void main() {
  try {
    stdout.write('Informe o nome da pessoa: ');
    var nome = stdin.readLineSync();
    stdout.write('Informe o peso da pessoa: ');
    var peso = double.parse(stdin.readLineSync()!);
    stdout.write('Informe a altura da pessoa: ');
    var altura = double.parse(stdin.readLineSync()!);
    var pessoa = Pessoa(nome!, peso, altura);

    print('Nome: ${pessoa.nome}');
    print('Peso: ${pessoa.peso}');
    print('Altura: ${pessoa.altura}');

    double? resultado = pessoa.calculaIMC(nome, peso, altura);

    pessoa.printClassificacao(resultado!);
    print('IMC: ${resultado.toStringAsFixed(2)}');
  } catch (e) {
    if (e is FormatException) {
      print('Insira um valor válido');
    } else {
      print(e.toString());
    }
  }
}
