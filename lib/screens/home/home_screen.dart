import 'package:appbrb/controllers/information_controller.dart';
import 'package:appbrb/screens/information/information_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final informationController = context.watch<InformationController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.08),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.4,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/brb_openfinance.png',
                        width: MediaQuery.of(context).size.width * 0.75,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.2,
                    ),
                    Container(
                        child: Text(
                      "Traga seus dados de outras instituições para o BRB via OpenFinance e "
                      "tenha acesso as novas modalidades de créditos"
                      " e investimentos disponiveis. ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.15,
                    ),
                    TextButton(
                      onPressed: () {
                        informationController.updateCount();
                        print(informationController.count);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> InformationScreen()));
                      },
                      child: Text("Habilitar Open Finance",
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
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Center(
                child: Image.asset(
                  'assets/images/pontos_turisticos.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
