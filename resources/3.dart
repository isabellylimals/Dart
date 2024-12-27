void main() {
  Statuspagamento status = Statuspagamento.pago;

  switch (status) {
    case Statuspagamento.pendente:
      print('Pagamento está pendente.');
      break;
    case Statuspagamento.pago:
      print('Pagamento já foi realizado.');
      break;
    case Statuspagamento.reembolso:
      print('Pagamento foi reembolsado.');
      break;
  }

  print('O status de pagamento no índice 1 é: ${Statuspagamento.values[1]}');
}


enum Statuspagamento {
  pendente,
  pago,
  reembolso
}
