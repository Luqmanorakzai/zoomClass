import 'package:flutter/material.dart';
import 'package:flutter_zoom/screens/navigate_data.dart';
import 'package:flutter_zoom/widget/custom_app_bar.dart';

class NavigateDataFromScreen extends StatelessWidget {
  const NavigateDataFromScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List shirtNames = ['Nicke', 'Ididas', 'Stylo'];
    final List shirtImages = [
      'assets/images/i3.jpg',
      'assets/images/i4.jpg',
      'assets/images/i5.jpg'
    ];
    final List price = ['\$ 245', '\$300', '\$100'];
    return Scaffold(
      appBar: CustomAppBar(
        titleText: 'Data From This',
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GridView.builder(
              itemCount: shirtImages.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.grey, width: 2)),
                  child: Column(
                    children: [
                      Text(
                        '${shirtNames[index]}',
                        style: TextStyle(fontSize: 26, color: Colors.black),
                      ),
                      Image(
                          height: 130,
                          image: AssetImage('${shirtImages[index]}')),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${price[index]}',
                        style: TextStyle(fontSize: 26, color: Colors.redAccent),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return NavigateDateaScreen(
                                  shirtNmae: shirtNames[index],
                                  shirtImages: shirtImages[index],
                                  price: price[index]);
                            }));
                          },
                          child: Text('Buy Now'))
                    ],
                  ),
                );
              })),
    );
  }
}
