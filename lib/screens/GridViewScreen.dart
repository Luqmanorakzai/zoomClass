import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> names = <String>['luqman', 'ali', 'mudasir', 'khan'];
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.95),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Grid View Screen'),
        centerTitle: true,
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: GridView(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       crossAxisSpacing: 10,
      //       mainAxisSpacing: 10,
      //     ),
      //     children: [
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.cyanAccent,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.cyanAccent,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.cyanAccent,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.cyanAccent,
      //       ),
      //
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: names.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ), itemBuilder: (context,index){
            return Container(
              color: Colors.cyan,
              child: Center(child: Text('\$ ${names[index]}',style: TextStyle(fontSize: 20,color: Colors.white),)),
            );
            },
            ),
      ));
  }
}
