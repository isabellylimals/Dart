void main(){
try{funcao(-10);
}on voceestafzendobesteira{
  print('besteira');
}

catch(e){
  print(e);
}
}

void funcao(int x){
if(x<=0){
  throw voceestafzendobesteira();
}
}
class voceestafzendobesteira implements Exception{
String toString(){
  return 'n pode';
}
}