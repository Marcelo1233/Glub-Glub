import 'package:flutter/material.dart';

class InicioApp extends StatefulWidget {
  const InicioApp({Key? key}) : super(key: key);

  @override
  State<InicioApp> createState() => _InicioAppState();
}

class _InicioAppState extends State<InicioApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: Image.asset(
                        'assets/images/cadastro.png',
                        width: 200,
                      ),
                  accountName: const Text('Marcelo Nascimento'),
                   accountEmail: const Text('marceloteste@gmail.com'),),
                Container(
                  padding: const EdgeInsets.only(top: 48, bottom: 24, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
            runSpacing: 10,
            children: [
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text("Inicio"),
                onTap: () {
                  
                },
              ),
              ListTile(
                leading: const Icon(Icons.auto_awesome),
                title: const Text("Minhas conquistas"),
                onTap: () {
                  
                },
              ),
              ListTile(
                leading: const Icon(Icons.description),  
                title: const Text("Histórico"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.border_color),
                title: const Text("Editar informações"),
                onTap: () {},
              ),
              const Divider(
                color: Colors.black,
              ),
              
              ListTile(
                leading: const Icon(Icons.report),
                title: const Text("Sobre"),
                onTap: () {
                  
                },
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text("Sair"),
                onTap:(){},
              )
            ],
          )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              "Glub",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          elevation: 1,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/cadastro.png'),
                const Text(
                  "teste",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
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
