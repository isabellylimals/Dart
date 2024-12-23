void main() {
  Map<int, String?> dds = {
    11: 'São Paulo',
    83: 'Paraíba',
    41: 'Curitiba',
    49: null,
  };

  // Acessando um valor por uma chave
  String? cidade = dds[5]; // Retorna null, pois a chave 5 não existe
  
  // Exibindo valor associado à chave 11
  print(dds[11]);

  // Exibindo o tamanho do mapa
  print(dds.length);

  // Adicionando uma nova chave-valor
  dds[61] = 'Brasília';
  print(dds);

  // Removendo a chave 49
  dds.remove(49);
  print(dds);

  // Exibindo todos os valores do mapa
  print(dds.values);

  // Exibindo todas as chaves do mapa
  print(dds.keys);

  // Verificando se uma chave existe no mapa
  print(dds.containsKey(11));

  // Iterando sobre o mapa usando forEach
  dds.forEach((key, value) {
    print('Key: $key   Value: $value');
  });

  // Adicionando múltiplos pares chave-valor
  dds.addAll({90: 'Cidade Legal', 91: 'Cidade Chata'});

  // Removendo chaves maiores que 20
  dds.removeWhere((key, value) => key > 20);

  print(dds);
  
}
