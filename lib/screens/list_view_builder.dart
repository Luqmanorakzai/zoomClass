import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> colorsCode = <int>[700, 500, 300, 100];
    final List<String> names = <String>['luqman', 'ali', 'mudasir', 'khan'];
    final List fNames=['Badsha','Wali','Ubaid','jan'];
    final List tShortsImagesPath=['assets/images/i5.jpg','assets/images/i3.jpg','assets/images/i3.jpg','assets/images/i3.jpg'];
    return Scaffold(
      body: ListView.builder(
        itemCount: colorsCode.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.amber[colorsCode[index]],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image(
                            height: 200,
                    width: 150,
                            image: AssetImage('${tShortsImagesPath[index]}')),
                        SizedBox(width: 20,),
                        Text('${names[index]}'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
