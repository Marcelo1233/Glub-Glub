import 'package:flutter/material.dart';

import 'dados_cadastrados.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 340,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/login.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: (Container(
                          margin: const EdgeInsets.only(top: 0),
                          child: const Center(
                            child: Text(
                              "Login ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Align(),
                    Container(
                      width: 350,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 350,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          child: const Text(
                            "Proximo",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DadosCadastrados()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 26, 185, 224),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 105, vertical: 15),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Melhor encontrar pedras no caminho\n                 do que nos rins\n                      beba água",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
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
