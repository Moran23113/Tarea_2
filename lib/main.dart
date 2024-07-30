// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
                style: TextStyle(
                  color: Colors.white,
                ),
                'Operaciones Aritmeticas'),
            backgroundColor: Colors.blue,
          ),
          body: const ClassName()),
    );
  }
}
//--------------------------------------------------------------------------------
class ClassName extends StatefulWidget {
  const ClassName({super.key});

  @override
  State<ClassName> createState() => _ClassNameState();
}

class _ClassNameState extends State<ClassName> {
  int itemselected = 1;
  final numero1controller = TextEditingController();
  final numero2controller = TextEditingController();
  final resultcontroller = TextEditingController();
  int n1 = 0;
  int n2 = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(),
        const Padding(padding: EdgeInsets.all(20)),
        SizedBox(
          width: 150,
          child: TextField(
            keyboardType: const TextInputType.numberWithOptions(),
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text('Primer Valor')),
            controller: numero1controller,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: 150,
          child: TextField(
            controller: numero2controller,
            keyboardType: const TextInputType.numberWithOptions(),
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text('Primer Valor')),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: 150,
          child: DropdownButton(
            value: itemselected,
            items: const [
              DropdownMenuItem(
                value: 1,
                child: Text('Suma'),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text('Resta'),
              ),
              DropdownMenuItem(
                value: 3,
                child: Text('Multiplicacion'),
              ),
              DropdownMenuItem(
                value: 4,
                child: Text('Division'),
              )
            ],
            onChanged: (value) {
              setState(() {
                itemselected = value as int;
              });
            },
          ),
        ),
         const Padding(padding: EdgeInsets.all(40)),

         SizedBox(
        width: 150,
        child:  TextField(
controller: resultcontroller,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), label: Text('Respuesta')),
        ),
        ),
        const Padding(padding: EdgeInsets.all(40)),
        SizedBox(
            height: 40,
            width: 150,
            child: ElevatedButton(
              onPressed: () {
              n1 = int.parse(numero1controller.text);
              n2 = int.parse(numero2controller.text);
              if (itemselected == 1  ) {
                resultcontroller.text = (n1 + n2).toString();
                numero1controller.text= '';
                numero2controller.text= '';
              } else if (itemselected == 2) {
                resultcontroller.text = (n1 - n2).toString();
                numero1controller.text= '';
                numero2controller.text= '';
              } else if (itemselected == 3 ) {
                resultcontroller.text = (n1 * n2).toString();
                numero1controller.text= '';
                numero2controller.text= '';
              } else if (itemselected == 4 ) {
                resultcontroller.text = (n1 / n2).toStringAsFixed(2);
                numero1controller.text= '';
                numero2controller.text= '';
                }

            


              },
              child: const Text('Calcular'),
            ))
      ],
    );
  }
}
