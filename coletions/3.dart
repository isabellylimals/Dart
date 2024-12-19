void main(){
  List<int> crazy= List.filled(100, 8);


  List<int> lista=List.generate(10,(i) => i*10);// esse i comeca no 1
  print(crazy);
  print(lista);
  print(lista.any((i)=>i%20==0));
  print(lista.firstWhere((i)=>i%40==0)); //last=o ultimo
  print(lista.where((i)=>i%40==0));
  print(lista.map((i)=> i+1));
}
int funcao(int pos){
  return pos* 10;
}