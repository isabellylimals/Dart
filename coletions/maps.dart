void main(){
  Map<int,String?> dds={11: 'São paulo', 83: 'Paraiba', 41: 'Curitiba', 49: null,};
  String? cidade= dds[5];
  
  print(dds[11]);



  print(dds.length);
  dds[61]= 'Brasilia';
  print(dds);
  dds.remove(49);
  print(dds);
  print(dds.values);
  print(dds.keys);
  print('dds.containsKey(11)');

}