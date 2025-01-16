import '1.dart';

void main(){
  Pessoa pessoa1=Pessoa(nome: 'Marina', idade:30);
print(pessoa1.nome);
print(pessoa1.idade);
}
class Pessoa{
Pessoa({required this.nome, required this.idade}){
  //o this faz referencia ao objeto e nao a variavel nome
  print('criando o $nome com idade $idade'); 
}
Pessoa.casada({required this.nome, required this.idade}){
  casada=true;
}
String nome;
int idade;
bool casada= false;
}