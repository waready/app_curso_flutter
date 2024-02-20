import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});
  final options = const['megaman', 'metal gear', 'super smash', 'final Fantasy', 'dota2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview Tipo 1"),
        ),
        body: ListView(
          children: [
            ...options.map(
              (e) => ListTile(
                title: Text(e),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              )
            ),
          ],
        ));
  }
}
