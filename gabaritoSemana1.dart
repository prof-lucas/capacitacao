void main() {
  // Questão 1
  /*
   A principal diferença entre uma variável do tipo dynamic e outra
   do tipo var, é que quando atribuimos um determinado tipo a uma
   variável var, não podemos posteriormente alterar o conteúdo da 
   variável para um tipo diferente.
   Ex:
   */
  var a = "Lucas";
  a = "Teste";
  print(a);
  // Não é uma instrução válida
  //a= 12;
  dynamic b = "Lucas";
  print(b.runtimeType); // saída: String
  b = 12;
  print(b.runtimeType); // saída: int

  //Questão 2
  for (int idade = 7; idade <= 20; idade++) {
    print(idade);
    idade <= 9
        ? print("Fraldinha")
        : idade >= 10 && idade <= 11
            ? print("Pré-mirim")
            : idade >= 12 && idade <= 13
                ? print("Mirim")
                : idade >= 14 && idade <= 15
                    ? print("Infantil")
                    : idade >= 16 && idade <= 18
                        ? print("Juvenil")
                        : print("Sem categoria definida");
  }
  //Questão 3
  print(multN(2, 3)); //saída: 6
  print(multN(2, 3, 10)); //saída: 60
  print(multN(2, 3, 5, 10, 4, 2)); //saída: 2400
  //Questão 4
  int x = 2;
  int y = 11;
  int z = 5;
  fazerAlgo(x, y, z, (int p, int q, int r) {
    return p > q && p > r
        ? p
        : q > r
            ? q
            : r;
  });
  fazerAlgo(x, y, z, menor);
  fazerAlgo(x, y, z, media);
  fazerAlgo(x, y, z, eConsecutivo);
  //Questão 5
  greeting("Lucas"); //saida: Bem-vindo, Lucas
  greeting("Lucas",idade:39); /* saída:
                               Bem-vindo, Lucas
                               Sua idade é 39 anos
                               */
  greeting(null,altura:1.69); /* saída:
                            Usuário desconhecido
                            Sua altura é 1.69
                             */
}

// Função da questão 3
int multN(int x1, int x2, [int x3 = 1, int x4 = 1, int x5 = 1, int x6 = 1]) =>
    x1 * x2 * x3 * x4 * x5 * x6;

//Função da questão 4
void fazerAlgo(int n1, int n2, int n3, Function f) {
  print(f(n1, n2, n3));
}

//Função da questão 4 letra a
int menor(int n1, int n2, int n3) {
  return n1 < n2 && n1 < n3
      ? n1
      : n2 < n3
          ? n2
          : n3;
}

//Função da questão 4 letra b
num media(int n1, int n2, int n3) => (n1 + n2 + n3) / 3;
// Função da questão 4 letra c
String eConsecutivo(int n1, int n2, int n3) {
  int first = menor(n1, n2, n3);
  int last = n1 > n2 && n1 > n3
      ? n1
      : n2 > n3
          ? n2
          : n3;
  return last - first == 2
      ? "$n1,$n2,$n3 são números consecutivos"
      : "$n1,$n2,$n3 não são números consecutivos";
}

// Função da questão 5
void greeting(String? nome, {int? idade, num? altura}) {
  if (nome != null) {
    print("Bem-vindo, $nome");
  } else {
    print("Usuário desconhecido");
  }
  if (idade != null) {
    print("Sua idade é $idade anos");
  }
  if (altura != null) {
    print("Sua altura é $altura");
  }
}
