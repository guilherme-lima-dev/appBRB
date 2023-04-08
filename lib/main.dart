import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.4,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/banco.png',
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.4,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: TextFormField(
                    decoration: InputDecoration(

                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff012F53),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'CPF/CNPJ',
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  // define a largura como 80% da largura da tela
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff012F53),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff012F53),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // código a ser executado quando o botão for pressionado
                      },
                      child: Text(
                        'Enviar',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
