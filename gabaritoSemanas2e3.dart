void main() {
  Map<int, String> meses = {
    1: "Janeiro",
    2: "Fevereiro",
    3: "Março",
    4: "Abril",
    5: "Maio",
    6: "Junho",
    7: "Julho",
    8: "Agosto",
    9: "Setembro",
    10: "Outubro",
    11: "Novembro",
    12: "Dezembro",
  };

print(ordena([12,22,0,4,-2,55,1],crescente:true));
print(ordena(geraNomesMeses(meses)));
print(ordena(geraNomesMeses(meses),crescente:false));
print(geraNomesMeses(meses).where((m){  
  return m.length <=6;
}));
print(geraNumerosMeses(meses).where((m){
  int nd = 0;
  for(int i=1;i<m;i++){
    if (m%i==0){
      nd++;
    }
  }
  return nd==1||m==1?true:false;
}));
List<int> l2a = List.generate(20,(n)=>6*n+3);
  print(l2a);
List<dynamic> l2b = List.generate(20,(n){
  int nd=0;
  for(int i=1;i<=n;i++){
    if (n%i==0){
      nd++;
    }
  }
  return n==0?0:nd<=2?true:nd;
});
  print(l2b);
 
 List<dynamic> l3a = [true, false, 1, "Dart",10,"Flutter",true];
 List <int> l3b = [11,5,8,1,22,44];
 List <String> l3c = ['UM','dois','três', 'QUATRO','CINCO','6'];
  print(l3a.map((e)=>e.runtimeType).toList());
  print(l3b.map((e){
    return e%2==0?"A":"a";
  }).toList());
  print(l3c.map((e)=>e.length).toList());
  
}
List<int> geraNumerosMeses(Map<int, String> meses) {
  List<int> numeroMes = meses.keys.toList();
  return numeroMes;
}

List<String> geraNomesMeses(Map<int, String> meses) {
  List<String> nomeMes = meses.values.toList();
  return nomeMes;
}

List<dynamic> ordena(List<dynamic> lista, {bool crescente = true}) {
  crescente
      ? lista.runtimeType == int
          ? lista.sort((a, b) => a - b)
          : lista.sort((a, b) => a.compareTo(b))
      : lista.runtimeType == int
          ? lista.sort((a, b) => b - a)
          : lista.sort((a, b) => b.compareTo(a));
  return lista;
}
