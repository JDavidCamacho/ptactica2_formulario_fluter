import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      title: "Formulario de Registro",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0XFF1E3A8A),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0XFF1E3A8A),
          secondary: Color(0XFFF6B7280),
        ),
        useMaterial3: true,
      ),
    )
  }
}

