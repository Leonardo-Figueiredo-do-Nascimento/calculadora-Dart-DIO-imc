String calcularIMC(double peso, double altura) {
  if (altura <= 0 || peso <= 0) {
    return 'Altura e peso devem ser maiores que zero.';
  }

  // Cálculo do IMC
  double imc = peso / (altura * altura);

  // Classificação do IMC
  String classificacao='';
  try{

    if (imc < 16) {
      classificacao = 'Magreza grave';
    } else if (imc < 17) {
      classificacao = 'Magreza moderada';
    } else if (imc < 18.5) {
      classificacao = 'Magreza leve';
    } else if (imc < 25) {
      classificacao = 'Saudavel';
    } else if (imc < 30) {
      classificacao = 'Sobrepeso';
    } else if (imc < 35){
      classificacao = 'Obesidade 1';
    } else if (imc < 40){
      classificacao = 'Obesidade 2';
    } else if (imc >= 40){
      classificacao = 'Obesidade 3';
    }

    // Retorno do resultado formatado
    return 'Seu IMC é ${imc.toStringAsFixed(2)} | $classificacao.';
  }catch(e){
    return "Erro";
  }
}