
import 'dart:convert';
void main(){
Map<String, dynamic> dados= json.decode(dadosUsuarios());
print(dados['endereco']['cidade']);
print(dados['cursos'][0]['dificuldade']);
}

String dadosUsuarios() {
  return '''
  {
    "nome": "Isabelly",
    "sobrenome": "Lima",
    "idade": 25,
    "cursos": [
      {
        "nome": "Dart",
        "nivel": "Intermediário",
        "certificado": true
      },
      {
        "nome": "Flutter",
        "nivel": "Básico",
        "certificado": false
      }
    ],
    "endereco": {
      "cidade": "Recife",
      "estado": "Pernambuco",
      "pais": "Brasil"
    },
    "preferencias": {
      "linguagensFavoritas": ["Dart", "Python", "JavaScript"],
      "modalidadeEstudo": "Online"
    }
  }
  ''';
}
