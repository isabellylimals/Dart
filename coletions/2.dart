void main() {
  List<String> names = [
    'Isa', 'MARIA', 'Pedro', 'Luana'
  ];

  
  print(names);

  // Outra maneira usando loop "for in"
  for (String name in names.sublist(2, 3)) {
    print(name.toUpperCase()); //recomendado
  }

  // Outra maneira usando forEach
  names.forEach((name) {
    print(name.toUpperCase());
  });

  // Outra maneira usando sublist com forEach
  names.sublist(2).forEach((name) {
    print(name.toUpperCase());
  });
}
