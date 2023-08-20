class Pessoa {
  String nome;
  double peso;
  double altura;
  double? resultado;

  Pessoa(this.nome, this.peso, this.altura) {
    if (peso <= 0 || altura <= 0) {
      throw FormatException('Peso e altura devem ser valores positivos.');
    }
  }

  double? calculaIMC(String nome, double peso, double altura) {
    try {
      double resultado = peso / (altura * altura);
      return resultado;
    } catch (e) {
      print('Erro: Os valores de peso e altura devem ser números válidos.');
    }
  }
  
  void printClassificacao(double resultado) {
    if (resultado < 16) {
      print("Classificação: Magreza grave");
    } else if (resultado == 16 || resultado < 17) {
      print("Classificação: Magreza moderada");
    } else if (resultado == 17 || resultado < 18.5) {
      print("Classificação: Magreza leve");
    } else if (resultado == 18.5 || resultado < 25) {
      print("Classificação: Saudável");
    } else if (resultado == 25 || resultado < 30) {
      print("Classificação: Sobrepeso");
    } else if (resultado == 30 || resultado < 35) {
      print("Classificação: Obesidade Grau I");
    } else if (resultado == 35 || resultado < 40) {
      print("Classificação: Obesidade Grau II(severa)");
    } else if (resultado >= 40) {
      print("Classificação: Obesidade Grau III(mórbida)");
    }
  }
}
