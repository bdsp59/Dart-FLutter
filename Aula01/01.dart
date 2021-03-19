import 'dart:io';

main() {
  
  print("Digite o seu nome: ");
  var nome = stdin.readLineSync();
  
  print("Digite um número inteiro: ");
  var numeroStr = stdin.readLineSync();
  var numero = int.parse(numeroStr); // numero é int
  
  if (numero > 10) {
    print("${nome}, o número ${numero} é maior que 10.");
  } else if (numero < 10) {
    print("${nome}, o número ${numero} é menor que 10.");
  } else {
    print("${nome}, o número ${numero} é igual a 10.");
  }
}