void main() {
  List<String> lista = [
    'Lucas',
    'marcelo',
    'Gabruel',
    18.toString(),
    false.toString()
  ];
  List <int> l1 = [11,0,35,4,5,6];
  l1.sort((a,b)=>a-b);
  lista.sort((a,b)=>b.compareTo(a));
 // print(l1.sublist(2));
  //print(lista);
//String? nome;
 // nome = 'Lucas';
  //nome = null;
  //print(nome);
  //String n = nome??'Não informado';
  //print(n);
//List <int> l2 = List.filled(20,0);
 List <int> l3 = List.generate(10,(i){
   if(i<5){
     return 2*i;
   }
   else{
     return 2*i+1;
   }
 });
// Iterable<int> d;
  /*d = l3.where((i){
    return i>5;
  });*/
  //d.forEach((a)=>print(a));
  List<int?>? noval3;
 // noval3 = [];
  //noval3 = [1,null,3];
  //noval3 = d.toList();
  //noval3 = l3.where((i)=>i>5).toList();
  
  noval3 = l3.map((i){
    if(i<5){
      return 0;
    }
    else{
      return 1;
    }
    
  }).toList();
 // print(noval3);
 // print(d);
 /* print(l3.where((i){
    return i>5;
  }));*/
  //print(l2);
  //print(l3);
 Map<int,String> mapa = {69:'a',
            70:'b',
             73:'f'
            };
  mapa[75] = 'h';
  //print(mapa);
  //print(mapa.values);
  //print(mapa.containsKey(70));
  mapa.forEach((k,v){
    print("Chave: $k");
    print("Valor: $v");
  });
}
