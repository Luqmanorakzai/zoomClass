import 'package:flutter/material.dart';
import 'package:flutter_zoom/screens/list_view_builder.dart';

class LisitViewScreen extends StatelessWidget {
  const LisitViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text('Demo app'),
        actions: [
          Icon(Icons.menu_sharp)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            reverse: true,
            children: [
            Container(
              height: mediaQery.height * 0.075,
              color: Colors.amber[700],
              child: Text('Text here'),
            ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[500],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[400],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[200],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[700],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[500],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[400],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[200],
              ),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[700],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[500],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[400],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[200],
              ),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[700],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[500],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[400],
              ),
              SizedBox(height: 10,),
              Container(
                height: mediaQery.height * 0.075,
                color: Colors.amber[200],
              ),

          ],),
        ),
      ),

    );
  }
}
