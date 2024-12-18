void main() {
  saudacoesmarujos();
 
}
void saudacoesmarujos(){
  print('saudacoes of me');
  print('agora; ${agora()}');
}
String agora(){
  DateTime agora= DateTime.now();
  return agora.toString();
}