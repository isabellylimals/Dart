void main(){
  List<String> lista= [];
lista..add('isa');
lista..add('maria');

  print(lista);
}
List<String> funcao(List<String> lista){
  return lista..add('Isa')
  ..add('Maria');
}