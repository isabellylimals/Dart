void main(){
  Pessoa pessoa1= Pessoa();
  pessoa1.trocarnome('Lavinia');
  pessoa1.nome= 'Isabelly';
  pessoa1.idade= 20;
  pessoa1.aniversario();
  print(pessoa1.idade);
  Pessoa pessoa2= Pessoa();
  pessoa2.nome= 'maria';
  pessoa2.casado= true;
  print(pessoa2.nome);
  pessoa2.aniversario();
  print(pessoa2.idade);
  print(pessoa1.nome);


}
class Pessoa{
String? nome;
int? idade;
bool casado= false;

void aniversario(){
  print('parabens $nome');
  if(idade!=null){
idade!=idade!+1; //o ponto de exclamacao garante que a variavel nao seja nula
  }
  
}
void casar(){
  casado=true;
}
void trocarnome(String n){
  nome= n;

}
}

