import 'package:flutter/material.dart';
import 'package:glub/paginas/dados_cadastrados.dart';

class Dados extends StatelessWidget {
  final dropValue = ValueNotifier('');
  final dropOpcoes = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '31',
    '32',
    '33',
    '34',
    '35',
    '36',
    '37',
    '38',
    '39',
    '41',
    '42',
    '43',
    '44',
    '45',
    '46',
    '47',
    '48',
    '49',
    '50',
  ];
  final dropValueSexo = ValueNotifier('');
  final dropOpcoesSexo = ['Masculino', 'Feminino'];
  final dropValueAltura = ValueNotifier('');
  final dropOpcoesAltura = ['1.00', '1.50', '2.00', '2.20'];
  final dropValuePeso = ValueNotifier('');
  final dropOpcoesPeso = [
    '1 kg',
    '10 kg',
    '20 kg',
    '30 kg',
    '40 kg',
    '50 kg',
    '60 kg'
  ];
  Dados({Key? key}) : super(key: key);

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
                              "Meus Dados",
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
                    ValueListenableBuilder(
                        valueListenable: dropValue,
                        builder: (BuildContext context, String value, _) {
                          return SizedBox(
                            width: 280,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              hint: const Text('Quantos anos você tem?'),
                              decoration: InputDecoration(
                                  label: const Text('Idade'),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  )),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  dropValue.value = escolha.toString(),
                              items: dropOpcoes
                                  .map((op) => DropdownMenuItem(
                                        value: op,
                                        child: Text(op),
                                      ))
                                  .toList(),
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 40,
                    ),
                    ValueListenableBuilder(
                        valueListenable: dropValueSexo,
                        builder: (BuildContext context, String value, _) {
                          return SizedBox(
                            width: 280,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              hint: const Text('Qual o seu sexo?'),
                              decoration: InputDecoration(
                                  label: const Text('Sexo'),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  )),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  dropValueSexo.value = escolha.toString(),
                              items: dropOpcoesSexo
                                  .map((op) => DropdownMenuItem(
                                        value: op,
                                        child: Text(op),
                                      ))
                                  .toList(),
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 40,
                    ),
                    ValueListenableBuilder(
                        valueListenable: dropValueAltura,
                        builder: (BuildContext context, String value, _) {
                          return SizedBox(
                            width: 280,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              hint: const Text('Qual a sua altura?'),
                              decoration: InputDecoration(
                                  label: const Text('Altura'),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  )),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  dropValueAltura.value = escolha.toString(),
                              items: dropOpcoesAltura
                                  .map((op) => DropdownMenuItem(
                                        value: op,
                                        child: Text(op),
                                      ))
                                  .toList(),
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 40,
                    ),
                    ValueListenableBuilder(
                        valueListenable: dropValuePeso,
                        builder: (BuildContext context, String value, _) {
                          return SizedBox(
                            width: 280,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              hint: const Text('Qual o seu peso?'),
                              decoration: InputDecoration(
                                  label: const Text('Peso'),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  )),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  dropValuePeso.value = escolha.toString(),
                              items: dropOpcoesPeso
                                  .map(
                                    (op) => DropdownMenuItem(
                                      value: op,
                                      child: Text(op),
                                    ),
                                  )
                                  .toList(),
                            ),
                          );
                        }),
                  ],
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
                            horizontal: 80, vertical: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
