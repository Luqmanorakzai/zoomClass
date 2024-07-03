import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> colorsCode = <int>[700,500,300,100];
    final List<String> names = <String>['luqman', 'ali','mudasir','khan'];
    return Scaffold(
body: ListView.builder(
  itemCount: colorsCode.length,
    itemBuilder: (context, index) {
      return Container(
        height: 100,
        color: Colors.amber[colorsCode[index]],
        child: Text(names[index]),
      );
    },),
    );
  }
}
