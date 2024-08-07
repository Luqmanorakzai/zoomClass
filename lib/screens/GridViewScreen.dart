import 'package:flutter/material.dart';
import 'package:flutter_zoom/screens/second_screen.dart';

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
          mainAxisSpacing: 10, 
              childAspectRatio: 1/1.5,
        ), itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return SecondScreen();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text('\$ ${names[index]}',style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            );
            },
            ),
      ));
  }
}
