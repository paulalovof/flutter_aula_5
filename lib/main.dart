import 'package:flutter/material.dart';
import 'package:flutter_aula_5/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Aula 05'),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
    ),
  );
}
