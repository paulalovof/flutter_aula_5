//import 'dart:html';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aula_5/check_box_option.dart';
import 'package:flutter_aula_5/check_box_custom.dart';
//import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //final List<CheckBoxOption> lenguage_options = []
  bool cbIsSelected_1 = false;

  _MyHomePageState();

  final List<CheckBoxOption> months = [
    CheckBoxOption(title: 'Janeiro'),
    CheckBoxOption(title: 'Fevereiro'),
    CheckBoxOption(title: 'Março'),
    CheckBoxOption(title: 'Abril'),
    CheckBoxOption(title: 'Maio'),
    CheckBoxOption(title: 'Junho'),
    CheckBoxOption(title: 'Julho'),
    CheckBoxOption(title: 'Agosto'),
    CheckBoxOption(title: 'Setembro'),
    CheckBoxOption(checked: true, title: 'Outubro'),
    CheckBoxOption(title: 'Novembro'),
    CheckBoxOption(title: 'Dezembro'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menuzinho',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pinkAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
            color: Colors.white,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        /*child: Column(
          children: <Widget>[
            Text(
              'Meu Check Box',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Checkbox 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                Checkbox(
                    value: cbIsSelected_1,
                    //checkColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        cbIsSelected_1 = value!;
                      });
                    })
              ],
            )
          ],
        ),*/
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: months.length,
          itemBuilder: (_, index) {
            return CheckBoxCustom(item: months[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: printSelectedMonths,
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.pinkAccent.shade100,
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Container();
}
