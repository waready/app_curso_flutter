
import 'package:fluterapp/screens/screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const ListView2Screen(),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'lisview1': (BuildContext context) => const AlertScreen(),
        'lisview2': (BuildContext context) => const CardScreen(),
        'lisview3': (BuildContext context) => const ListView1Screen(),
        'lisview4': (BuildContext context) => const ListView2Screen(),
      },
    );
  }
}