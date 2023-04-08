import 'package:appbrb/controllers/information_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final informationController = context.watch<InformationController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          child: Column(children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/brb_openfinance.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                  fit: BoxFit.contain,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "  Sair",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: [
                Text(
                  "Olá, ",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                Text(
                  informationController.informations[informationController.count ?? 0]["name"],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            informationController.informations[informationController.count ?? 0]["acceptLoan"]
            ? Row(
              children: [
                Text(
                  "Nós temos sugestões para você!",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            )
            :Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Infelizmente ainda não conseguimos um programa para você! "
                    "\nPeça uma reavaliação dentro de 3 meses!",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            if(informationController.informations[informationController.count ?? 0]["acceptLoan"])
              ..._buildLoan(context, informationController)
          ]),
        ),
      ),
    );
  }

  List<Widget> _buildLoan(BuildContext context, InformationController informationController){
    return [
      Container(
        width: MediaQuery.of(context).size.width,
        child: Text(
          "Temos uma oportunidade para você!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.02,
      ),
      informationController.informations[informationController.count ?? 0]["isInvestor"] ?
      Text("Notamos que você se encaixa no perfil "
          "para modalidade de empréstimos e "
          "investimento Peer-to-Peer!",
        style: TextStyle(
            color: Colors.white
        ),
      ):Text("Notamos que você se encaixa no perfil "
          "para modalidade de empréstimos Peer-to-Peer!",
        style: TextStyle(
            color: Colors.white
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
      ),
      Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpansionTile(
            backgroundColor: Colors.white,
            title: Text("O que é Peer-to-Peer?"),
            trailing: Icon(Icons.arrow_drop_down),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:  16.0),
                child: Text("     O empréstimo peer-to-peer, ou P2P, é a nova modalidade oferecida pelo BRB, em que pessoas emprestam dinheiro umas às outras diretamente, sendo possível utilizar uma plataforma como intermediadora desse processo. No P2P, o banco fica responsável por garantir que o empréstimo seja pago, facilitando todo o processo e criando um ambiente seguro para quem o utiliza."
    "\n     Essa modalidade de empréstimo pode ser mais acessível, com taxas de juros mais baixas e menos burocracia do que empréstimos tradicionais. Dessa maneira, o acesso à credito para os brasileiros é facilitado com o P2P, além de também poder gerar uma boa rentabilidade para quem investe."),
              ),
            ],
          ),
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpansionTile(
            backgroundColor: Colors.white,
            title: Text("Proposta de contratação"),
            trailing: const Icon(Icons.arrow_drop_down),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:  16.0),
                child: Text(informationController.informations[informationController.count ?? 0]["text"] ?? ""),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Falar com um atendente",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white)),
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width, 10)),
          backgroundColor:
          MaterialStateProperty.all(const Color(0xff03ADED)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(color: Color(0xff03ADED)))),
        ),
      ),
    ];
  }
}
