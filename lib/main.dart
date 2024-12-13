import 'dart:developer';

import 'package:flutter/material.dart';

import 'dynamic_list.dart';

void main() {
  runApp(const MyApp());

   obtenerDatos();
  log('Que pasa, me imprimo primero');
}

Future<void> obtenerDatos() async {
  log('Empezó...');
  await Future.delayed(const Duration(seconds: 2), (){
      log('Estoy dentro');
  });
  log('He salido');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DynamicList(),
    );
  }
}

