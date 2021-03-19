/*Verificar se uma pessoa é maior de idade

perguntar a idade da pessoa
se for maior ou igual a 18:
  Escrever que é maior de idade
se for menor que 18:
  Escrever que é menor de idade
*/

import 'dart:io';

void main() {
  print("Entre com a sua idade: ");
  var input = stdin.readLineSync();
  
  if (input != null) {//Precisa fazer isso para o programa entender que a String vai receber um valor e não vai ser null.
    var idade = int.parse(input);

    if (idade >= 18) {
      print("É maior de idade");
    } else {
      print("É menor de idade");
    }
  } else {
    print('Input was null!');
  }
}