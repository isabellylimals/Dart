void main() {
  saudacoesmarujos('Isa');
  saudacoesmarujos('Isa linda');
  //int numero=10;
}

void saudacoesmarujos(String name,{bool mostraragora=true, bool mostrarcliente=false, String? cliente ,}){//? serve para poder ser nula a variavel
  
 if (cliente!=null){
   print('SEja bem vindo: $cliente');
 }
  print('saudacoes of me: $name');
  if(mostraragora){
  print('Seja bem vindo: $agora');
  }

         }
String agora(){
  DateTime agora= DateTime.now();
  return agora.toString();
}