import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom/widget/custom_app_bar.dart';
class StackScreen extends StatelessWidget {
  const StackScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titleText: 'Stack screen',),

      body: Center(
        child: Stack(
            clipBehavior: Clip.none,
          children: [
            Container(
              height: 200,
              width: 300,
            color: Colors.cyan,
            ),
            // Container(
            //   height: 250,
            //   width: 250,
            //   color: Colors.red,
            // ),
            Positioned(
              top: -50,
              left: 100,
              // bottom: 0,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.amber,
                  shape: BoxShape.circle
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
