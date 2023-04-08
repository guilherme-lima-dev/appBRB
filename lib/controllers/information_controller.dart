import 'package:flutter/material.dart';

class InformationController extends ChangeNotifier{

    int? count;

    final List<Map> informations = [
      {
        "name": "João",
        "isInvestor": false,
        "acceptLoan": true,
        "title": "Proposta de Contratação",
        "text": "Juros de 15% ao ano, o que significa um total de R\$ 6.000 em juros ao longo dos 3 anos de empréstimo (considerando que ela pagaria parcelas mensais de R\$ 833,33).\n\n"
            "O BRB receberia uma taxa de intermediação de 2% sobre o valor emprestado, o que significa R\$ 400."
            "O investidor receberia o valor emprestado de R\$ 20.000 mais os juros de R\$ 6.000 ao longo dos 3 anos, totalizando R\$ 26.000.\n\n",
      },
      {
        "name": "Flávio",
        "isInvestor": false,
        "acceptLoan": true,
        "title": "Proposta de Contratação",
        "text": "juros de 20% ao ano, o que significa um total de R\$ 8.000 em juros ao longo dos 3 anos de empréstimo (considerando que ela pagaria parcelas mensais de R\$ 916,67).\n\n"
            "O BRB receberia uma taxa de intermediação de 3% sobre o valor emprestado, o que significa R\$ 600."
            "O investidor receberia o valor emprestado de R\$ 20.000 mais os juros de R\$ 8.000 ao longo dos 3 anos, totalizando R\$ 28.000.\n\n",
      },
      {
        "name": "Victor",
        "isInvestor": true,
        "acceptLoan": true,
        "title": "Proposta de Contratação",
        "text": "Juros de 15% ao ano, o que significa um total de R\$ 6.000 em juros ao longo dos 3 anos de empréstimo (considerando que ela pagaria parcelas mensais de R\$ 833,33).\n\n"
            "O BRB receberia uma taxa de intermediação de 2% sobre o valor emprestado, o que significa R\$ 400."
            "O investidor receberia o valor emprestado de R\$ 20.000 mais os juros de R\$ 6.000 ao longo dos 3 anos, totalizando R\$ 26.000.\n\n",
      },
      {
        "name": "Guilherme",
        "isInvestor": false,
        "acceptLoan": false,
        "title": null,
        "text": null,
      },
    ];

    updateCount(){
      count = (count == (informations.length-1) || count == null) ? 0 : count!+1;
      notifyListeners();
    }
}