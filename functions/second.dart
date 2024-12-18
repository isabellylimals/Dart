void main() {
  saudacoesmarujos('Isa');
  saudacoesmarujos('Isa linda');
  
}

void saudacoesmarujos(String name,{bool mostraragora=true, String sep= '-'}){
  print(sep * 20);
  print('saudacoes of me: $name');
        if (mostraragora){
      print('agora; ${agora ()}');
}
                      }
  
String agora(){
  DateTime agora= DateTime.now();
  return agora.toString();
}