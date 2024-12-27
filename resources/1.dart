void main(){
  try{
int resultado =100~/0;
print(resultado);
double valor= double.parse('50.2a');
print(valor);

  }on UnsupportedError{//erro especifico
print('caiu aqui');
  } on FormatException catch(e) {
    print('caiu o formato excpetion $e');
  }
  catch(e){
    print(e.runtimeType);
  }finally{
    print('final ');
  }

}