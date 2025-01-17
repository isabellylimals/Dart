/*Classe ContaBancaria
Implemente uma classe chamada ContaBancaria com os seguintes atributos e métodos:

Atributos:
numeroConta (string)
saldo (double)
Métodos:
depositar(double valor): adiciona o valor ao saldo.
sacar(double valor): subtrai o valor do saldo, caso haja saldo suficiente.
exibirSaldo(): imprime o saldo atual.
Tarefa: Crie uma conta bancária, realize operações de depósito e saque, e exiba o saldo final*/

import 'dart:io';

void main() {
  
  ContaBancaria conta = ContaBancaria(numeroConta: 587, saldo: 1000.50);

  conta.exibirSaldo();

 
  print('Quanto dinheiro deseja depositar?');
  String? input = stdin.readLineSync();
  double? valor = double.tryParse(input ?? '');

  if (valor != null && valor > 0) {
    conta.depositar(valor);
  } else {
    print('Valor inválido para depósito.');
  }

  conta.exibirSaldo();
}

class ContaBancaria {
  int numeroConta;
  double saldo;
//construtor
  ContaBancaria({required this.numeroConta, required this.saldo});

 //metodo
  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$${valor.toStringAsFixed(2)} realizado com sucesso!');
  }

 //metodo
  void exibirSaldo() {
    print('O saldo atual é: R\$${saldo.toStringAsFixed(2)}');
  }
}