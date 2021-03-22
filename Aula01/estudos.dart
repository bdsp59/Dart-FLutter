import "dart:math";//Quer dizer que queremos trazer a biblioteca math do dart para que possa ser usado no nosso programa
import "dart:io";//Traz a biblioteca responsável por configurar os dispositivos de entrada e saída no programa

///////////////////////////////////////////////////////
/*Funções */

void drawTriangle(){
  print(" /|");
  print("/ |");
}

void sayHi(String username){
  print("Hi ${username}!");
}

double calc(double num1, double num2){
  double total = num1 + num2;
  return total;
}

String prompt(String promptText){
    print(promptText);
    var answer = stdin.readLineSync();
    if(answer != null){
      return answer;
    }
    String erro = "It is empty";
    return erro;
}

void main(){
  
  String name = "Oscar"; //Declaração de variável do tipo String
  
  int age = 25; //Declaração de variável do tipo Integer
  double gpa = 6.2; //Declaração de variável do tipo Double

  bool isAbove18 = true; //Declaração de variável do tipo booleano

  print("There once was a man named ${name}.");//Para incluir o valor de uma variável no texto usamos: ${variavel}
  print("He was ${age} years old.");
  print("He really liked the name ${name}.");
  print("But he didn't like being ${age}.");

  /////////////////////////////////////////////////////////////////
  
  /* Strings
      Index: Index dentro de Strings serve para enumerar a posição de cada carácter da palavra ou frase que está na String. Começando no 0.
      .length -> Indica a quantidade de caracteres na String.
      .toUpperCase -> A String passa a ser toda maiúscula.
      .toLowerCase -> A String passa a ser toda minúscula.
      .indexOf -> Traz o índice da primeira aparição da carácter que está no ().
      .contains -> Indica se o carácter no () está na String ou não.
      concatenação -> Une duas Strings
  */
  
  String greeting = "Hello";
  String greeting2 = "World";

  print("-------------------------------");
  print(greeting.length);
  print("");
  print(greeting[0]);
  print("");
  print(greeting.toUpperCase());
  print("");
  print(greeting.toLowerCase());
  print("");
  print(greeting.indexOf("l"));
  print("");
  print(greeting.contains("e"));
  print("");
  print(greeting + " " + greeting2);
  
  /////////////////////////////////////////////////////////////////
  
  /* Numbers
    Podemos fazer qualquer operção matemática com esses números

  */

  int quantity = 300;
  double price = 5.99;

  print("");
  print("-------------------------------");
  print(5 + 3);//Imprime a soma de 5 com 3
  print("");
  print(5 - 3);//Imprime a subtração de 5 com 3
  print("");
  print(5 * 3);//Imprime a multiplicação de 5 com 3
  print("");
  print(5 / 3);//Imprime a divisão de 5 com 3
  print("");
  print(5 % 3);//Imprime resto da divisão de 5 com 3 (%->mod)
  
  quantity += 50;//Acrecenta 50 ao valor de quantity e já o salva com o resultado da soma
  print("");
  print(quantity);

  quantity -= 50;//Subtrai 50 ao valor de quantity e já o salva com o resultado da soma
  print("");
  print(quantity);

  quantity *= 50;//Multiplica o valor de quantity por 50 e já o salva com o resultado da soma
  print("");
  print(quantity);

  double result;
  result = quantity / 50;//Divide o valor de quantity por 50 e temos que salvar em outra variável, pois o resultado será um Double
  print("");
  print(result);

  print("");
  print(min(1,9));//Traz o menor valor dentro dos dois valores que a função recebe

  print("");
  print(max(1,9));//Traz o maior valor dentro dos dois valores que a função recebe

  print("");
  print(sqrt(144));//Calcula a raiz quadrada do valor que a função recebe

  //////////////////////////////////////////////////////////
  /*Boolean
    Podemos obter valores booleanos ao declara-los como true ou false. Mas também podemos obte-los através de expressões booleanas.
   */

  print("");
  print("-------------------------------");
  print( 5 > 3 );//5 é maior do que 3, vai imprimir true ou false

  ////////////////////////////////////////////////////////////
  /*Input
    Para podermos pegar dados do usuário para utilizar no programa, temos que pegar os dados através do input
   */
  print("");
  print("-------------------------------");
  print("What is your name?");
  var username = stdin.readLineSync();
  print("Hello ${username}");

/////////////////////////////////////
  /*Calculadora */

  print("");
  print("-------------------------------");

  print("Enter first number: ");
  var num1 = stdin.readLineSync();
  print("Enter second number: ");
  var num2 = stdin.readLineSync();

  if(num1 != null){
    if(num2 != null){
      int total = int.parse(num1) + int.parse(num2);
      print(total);
    }
  }else{
    print("Some number was null");
  }

  ////////////////////////////////////////////////////
  /*Madlibs Game*/

  print("");
  print("-------------------------------");

  print("Enter a color: ");
  var color = stdin.readLineSync();

  print("Enter a plural noun: ");
  var noun = stdin.readLineSync();

  print("Enter a celebrity: ");
  var celebrity = stdin.readLineSync();

  print("Roses are ${color}");
  print("${noun} are blue");
  print("I love ${celebrity}");


  /////////////////////////////////////////////////////////
  /*Vetores */
  print("");
  print("-------------------------------");

  List<int> favNums = [4, 8, 15, 16, 23, 42];

  print(favNums);//Imprime o vetor todo

  print(favNums[4]);//Imprime o elemento no índice 4

  print(favNums.length);//Indica quantos elementos tem no vetor

  favNums[3] = 14;//Troca o valor do elemento no índice 3

  print(favNums[3]);

  print(favNums[1] + favNums[5]);//Soma os valores no índice 1 e no índice 5

  favNums.add(64);//Adiciona o 64 no final do vetor

  favNums.remove(14);//Se houver o elemento 14, ele será removido

  print(favNums);

  print(favNums.indexOf(23));//Traz o índice do elemento no (), mas se não existir o elemento exibe -1

  print(favNums.contains(42));//Indica, com booleano, se o número está ou não no vetor

  //Chamando as funções
  print("");
  print("-------------------------------");

  drawTriangle();
  drawTriangle();
  drawTriangle();
  drawTriangle();
  drawTriangle();

  //Parametros e argumentos - Chamando funções com parametros
  print("");
  print("-------------------------------");

  sayHi("{username}");
  sayHi("Lucas");
  sayHi("Maite");

  //Return
  print("");
  print("-------------------------------");

  print(calc(5.4, 6.7));

  //Building a prompt function
  print("");
  print("-------------------------------");

  String color2 = prompt("What's your favorite color?");

}