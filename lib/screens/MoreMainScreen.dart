import 'package:flutter/material.dart';
import 'package:news_flutter_test/screens/AppleScreen.dart';
import 'package:news_flutter_test/util/AnimatedAccount.dart';
import 'package:news_flutter_test/util/AnimatedNews.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[300],
      //   title: Text("More",style: TextStyle(color: Colors.black,fontSize: 25),),
      // ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        color: Colors.grey[300],
        width: double.infinity,
        child: Row(

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
                  child: AnimatedStars(),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedAccount(),
              ),
            ),
          ],

        ),
      ),
    );
  }
}


// child: Card(
//                   color: Colors.grey[400],
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.face,
//                         size: 100,
//                         color: Colors.grey[600],
//                       ),
//                       Text(
//                         'My Account',
//                         style: TextStyle(
//                             fontSize: 28,
//                             fontFamily: 'PlayfairDisplay'
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),