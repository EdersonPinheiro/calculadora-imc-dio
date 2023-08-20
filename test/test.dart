import 'package:calculadora_imc/model/pessoa.dart';
import 'package:test/test.dart';

final pessoa = Pessoa("", 60, 1.75);
void main() {
  group("Calcula IMC: ", () {
    var valuesToTest = {
      {'nome': "Eduarda", 'peso': 70.0, 'altura': 1.70}: 24.22,
      {'nome': "Fernanda", 'peso': 60.0, 'altura': 1.65}: 22.03,
    };

    valuesToTest.forEach((values, expected) {
      test('${values['nome']}', () {
        final nome = values['nome'].toString();
        final peso = double.parse(values['peso'].toString());
        final altura = double.parse(values['altura'].toString());
        final result = pessoa.calculaIMC(nome, peso, altura);
        expect(double.parse(result!.toStringAsFixed(2)), closeTo(expected, 0.1));
      });
    });
  });

  test('Teste valores zerados ou negativos', () {
    expect(() => Pessoa('Inválido', 0, 1.70), throwsException);
    expect(() => Pessoa('Inválido', 70, -1.70), throwsException);
  });
}
