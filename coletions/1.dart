void main() {
  List nomes = ['Isa', 'Maria', '78']; // Cria uma lista chamada 'nomes' contendo strings e um número como string.
  print(nomes); // Imprime a lista 'nomes'.

  List<int> n = [1, 2, 4, 5]; // Cria uma lista de inteiros chamada 'n'.
  print(n.length); // Imprime o número de elementos da lista 'n' (tamanho da lista).
  print(n.first); // Imprime o primeiro elemento da lista 'n'.
  print(n[3]); // Imprime o elemento no índice 3 da lista (4º elemento da lista, que é 5).

  n.add(588); // Adiciona o número 588 ao final da lista 'n'.

  n.addAll([4, 5, 8, 10, 58, 89, 17, 22]); // Adiciona todos os elementos da lista fornecida ao final da lista 'n'.

  n.insert(0, 2); // Insere o número 2 no índice 0 (início) da lista 'n'.

  print(n.contains(8)); // Verifica se o número 8 está presente na lista 'n'. Retorna verdadeiro ou falso.
  print(n.indexOf(8)); // Retorna o índice da primeira ocorrência do número 8 na lista 'n'.

  print(n.remove(4)); // Remove a primeira ocorrência do número 4 na lista 'n' e retorna verdadeiro se conseguiu remover.

  print(n); // Imprime a lista atualizada 'n'.

  print(n.removeAt(5)); // Remove o elemento no índice 5 da lista 'n' e retorna o valor removido.

  n.shuffle(); // Embaralha os elementos da lista 'n' aleatoriamente.
  print(n); // Imprime a lista embaralhada.

  n.clear(); // Remove todos os elementos da lista 'n'.
  print(n); // Imprime a lista vazia.
}
