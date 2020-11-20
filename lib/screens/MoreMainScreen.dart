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
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text("More",style: TextStyle(color: Colors.black,fontSize: 25),),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => AppleNews(),
                        ));
                  },
                  child: Card(
                    child: Container(
                      child: Container(
                        margin: EdgeInsets.only(top: 300, left: 65),
                        child: Text(
                          "Innovation News",
                          style: TextStyle(fontSize: 35, color: Colors.white,fontFamily: 'PlayfairDisplay'),
                        ),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/innovation.png')),
                        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.grey[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.face,
                        size: 100,
                        color: Colors.grey[600],
                      ),
                      Text(
                        'My Account',
                        style: TextStyle(
                            fontSize: 28,
                          fontFamily: 'PlayfairDisplay'
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
