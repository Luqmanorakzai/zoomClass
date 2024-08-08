import 'package:flutter/material.dart';
import 'package:flutter_zoom/widget/custom_app_bar.dart';

class NavigateDateaScreen extends StatelessWidget {
  final String shirtNmae;
  final String shirtImages;
  final String price;
  const NavigateDateaScreen({super.key, required this.shirtNmae, required this.shirtImages, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titleText: 'Navigate Data',),

      body: Center(child:
        Container(
          height: 300,
          width: 300,
          child: Column(children: [
            Text('$shirtNmae'),
            Image(image: AssetImage('$shirtImages')),
            Text('$price'),
            Text('You baught'),
          ],),
        ),),
    );
  }
}
