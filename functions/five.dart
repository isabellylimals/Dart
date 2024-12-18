void main() {
  saudacoesmarujos('Isa', cliente: 'MARIA', corpo:(int i){
     for(int j=0;j<i;j++){

    print('ola dois');
  
   }
  });
  
  // int numero = 10; // Opcional
  funcao('Olá', null, c: null, d: 'teste');
}

void saudacoesmarujos(String name, {required Function(int)corpo , mostraragora = true, bool mostrarcliente = false, String? cliente}) {
  // Operador '??' para lidar com valores nulos
  String c = cliente ?? 'Não informado';
 
  print('Seja bem-vindo, cliente: ${c.toUpperCase()}');
  print('Saudações de mim para você: ${name.toUpperCase()}');
  print('corpo');
  if (mostraragora) {
    print('Seja bem-vindo: ${agora()}');
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}

void funcao(
  String a,
  String? b, {
  String? c, // Parâmetro opcional
  required String d, // Parâmetro obrigatório nomeado
}) {
  print('a: $a, b: $b, c: $c, d: $d');
}
