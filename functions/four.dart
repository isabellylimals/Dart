void main() {
  saudacoesmarujos('Isa', cliente: 'MARIA');
  saudacoesmarujos('Isa linda');
  // int numero = 10; // Opcional
}

void saudacoesmarujos(String name, {bool mostraragora = true, bool mostrarcliente = false, String? cliente}) {
  // Operador '??' para lidar com valores nulos
  String c = cliente ?? 'Não informado';

  
  print('Seja bem-vindo, cliente: ${c.toUpperCase()}');
  print('Saudações de mim para você: ${name.toUpperCase()}');

  
  if (mostraragora) {
    print('Seja bem-vindo: ${agora()}');
  }
}


String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
