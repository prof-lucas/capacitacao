void main() {
  List<String> lista = [
    'Lucas',
    39.toString(),
    false.toString(),
    3.14.toString()
  ];
  //List<int> notas = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // print(lista.length);
  //print(lista.remove('fals'));
  lista.add('Marcelo');
  lista.addAll(['Gabriel', 'Sergio', 'Marcos']);
  lista.insert(5, 'Joao');
  lista.insertAll(2, ['Pedro', 'Ana']);
  //lista.clear();
  lista.shuffle();
  //print(lista);
  /* for(int i = 0;i<notas.length;i++){
    print(notas[i]);
  }
  */
/*  for (int nota in notas){
    if(nota%2==0){
      print(nota);
    }
  }*/
  /*notas.forEach((nota) {
    print(nota*2);
  });
  print(notas);
  */
  List<int> l1 = [1,2,3,4,5,6,7];
  l1.shuffle();
 // List<int> l2 = l1.sublist(2,4);
  print(l1);
  l1.sort((a,b)=>b-a);
  print(l1);
 // print(l2);
  
}
