import 'package:flutter/material.dart';
import 'package:news_flutter_test/screens/AppleScreen.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("More"),),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => AppleNews(),));
            },
              child: Text("Innovation News",style: TextStyle(fontSize: 28),)
          ),
          SizedBox(height: 20,),
          Text("My Account",style: TextStyle(fontSize: 28),),
        ],
      ),
    );
  }
}
