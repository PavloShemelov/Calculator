// main.dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';  //Import Firebase core package
import 'calculator_screen.dart';
import 'converter_screen.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Fix constructor definition

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const CalculatorScreen(),
        '/converter': (context) => ConverterScreen(),
      },
    );
  }
}
