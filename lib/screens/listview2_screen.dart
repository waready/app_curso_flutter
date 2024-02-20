import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({super.key});
  final options = const [
    'megaman',
    'metal gear',
    'super smash',
    'final Fantasy',
    'dota2'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar (
          title: const Center(
            child: Text("Listview Tipo 2", style: TextStyle( color: Colors.white )),
          ),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
                onTap: () {
                  final game = options[index];
                  print(game);
                },
              ) ,
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length
        )
    );
  }
}
