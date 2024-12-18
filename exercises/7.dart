import 'dart:io';
// CONCATENATE TWO LISTS
void main() {
  List<String> names = [
    'MARIA',
    'ISABELLY',
    'EDUARDA',
    'LORENA',
    'MONICA'
  ];
  List<String> names2 = [
    'José',
    'Mateus',
    'João'
  ];

  names.addAll(names2);

  print('Concatenated List: $names');
}
