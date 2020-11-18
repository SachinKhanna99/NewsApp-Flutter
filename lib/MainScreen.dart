import 'package:flutter/material.dart';
import 'package:news_flutter_test/BitcoinNewsScreen.dart';
import 'package:news_flutter_test/IndianNews.dart';
import 'package:news_flutter_test/MoviesNews.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose Field"),centerTitle: true,),
body:SingleChildScrollView(
  child:   Container(
    child:  Column(
      children: [
        new Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) =>ShowLatestNews()));
              },
              child: new Card(
                child:  Container(

                 height: 200,

                 width: 150,
                  margin: EdgeInsets.only(top: 50,left: 20),
                  child: Container(

                   margin: EdgeInsets.only(top: 160,left: 10),
                   child: new Text(
                       'Entertainment',
                       style: TextStyle(fontSize: 20,color: Colors.black)
                   ),
                 ),
                  decoration: new BoxDecoration(
                    color: const Color(0xfffff),
                    image: new DecorationImage(
                        fit: BoxFit.contain,
                        colorFilter: new ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop),
                        image: new AssetImage('assets/images/movie.png'),alignment: Alignment.topCenter
                    ),



                 ),



               ),



           ),
            ),
  
           GestureDetector(
             onTap: (){
               Navigator.push(context, new MaterialPageRoute(builder: (context) =>BitcoinNews()));
             },
             child: new Card(

               child:  Container(
                 height: 170,
                 width: 150,
                 margin: EdgeInsets.only(top: 70,left: 23),
                 child: Center(
                   child: new Text(
                       'Bitcoin',
                       style: TextStyle(fontSize: 40,color: Colors.amberAccent)
                   ),
                 ),
                 decoration: new BoxDecoration(
                   color: const Color(0xff7c94b6),
                   image: new DecorationImage(
                       fit: BoxFit.cover,
                       colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
                       image: new AssetImage('assets/images/sports.png')
                   ),



                 ),



               ),



             ),
           ),
  
  
  
         ],
  
  
  
       ),
  
       new Row(
  
         children: [
  
           new Card(
  
             child:  Container(
  
               height: 170,
  
               width: 150,
  
  
  
               margin: EdgeInsets.only(top: 70,left: 20),
  
  
  
               child: Center(
  
  
  
                 child: new Text(
  
  
  
                     'Business',
  
  
  
                     style: TextStyle(fontSize: 40,color: Colors.amberAccent)
  
  
  
                 ),
  
  
  
               ),
  
  
  
               decoration: new BoxDecoration(
  
  
  
                 color: const Color(0xff7c94b6),
  
  
  
                 image: new DecorationImage(
  
  
  
                     fit: BoxFit.cover,
  
  
  
                     colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
  
  
  
                     image: new AssetImage('assets/images/sports.png')
  
  
  
                 ),
  
  
  
               ),
  
  
  
             ),
  
  
  
           ),
  
           new Card(
             child:  Container(
               height: 170,
               width: 150,
  
  
  
               margin: EdgeInsets.only(top: 70,left: 23),
  
  
  
               child: Center(
  
  
  
                 child: new Text(
  
  
  
                     'Article',
  
  
  
                     style: TextStyle(fontSize: 40,color: Colors.amberAccent)
  
  
  
                 ),
  
  
  
               ),
  
  
  
               decoration: new BoxDecoration(
  
  
  
                 color: const Color(0xff7c94b6),
  
  
  
                 image: new DecorationImage(
  
  
  
                     fit: BoxFit.cover,
  
  
  
                     colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
  
  
  
                     image: new AssetImage('assets/images/sports.png')
  
  
  
                 ),
  
  
  
               ),
  
  
  
             ),
  
  
  
           ),
  
  
  
         ],
  
  
  
       ),
  
       new Row(
  
         children: [
  
           new Card(
  
             child:  Container(
  
               height: 170,
  
               width: 150,
  
  
  
               margin: EdgeInsets.only(top: 70,left: 20),
  
  
  
               child: Center(
  
  
  
                 child: new Text(
  
  
  
                     'Tech Crunch',
  
  
  
                     style: TextStyle(fontSize: 40,color: Colors.amberAccent)
  
  
  
                 ),
  
  
  
               ),
  
  
  
               decoration: new BoxDecoration(
  
  
  
                 color: const Color(0xff7c94b6),
  
  
  
                 image: new DecorationImage(
  
  
  
                     fit: BoxFit.cover,
  
  
  
                     colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
  
  
  
                     image: new AssetImage('assets/images/sports.png')
  
  
  
                 ),
  
  
  
               ),
  
  
  
             ),
  
  
  
           ),
  
           GestureDetector(
             onTap: (){
               Navigator.push(context, new MaterialPageRoute(builder: (context) =>HomeView()));
             },
             child: new Card(

               child:  Container(



                 height: 170,



                 width: 150,



                 margin: EdgeInsets.only(top: 70,left: 23),



                 child: Center(



                   child: new Text(



                       'Indian News',



                       style: TextStyle(fontSize: 40,color: Colors.amberAccent)



                   ),



                 ),



                 decoration: new BoxDecoration(



                   color: const Color(0xff7c94b6),



                   image: new DecorationImage(



                       fit: BoxFit.cover,



                       colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),



                       image: new AssetImage('assets/images/sports.png')



                   ),



                 ),



               ),



             ),
           ),
  
  
  
         ],
  
  
  
       ),
  
     ],
  
   ),
  
  
  
    ),
),
    );
  }
}




// body:Container(
//   height: 200,
//   width: 200,
//   margin: EdgeInsets.only(top: 70,left: 20),
//   decoration: BoxDecoration(
//     image:DecorationImage(
//       image: AssetImage('assets/images/sports.png'),fit: BoxFit.cover,
//     )
//   ),
// )