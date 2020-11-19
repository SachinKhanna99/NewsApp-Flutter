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
      appBar: AppBar(title: Text("Choose Field",style: TextStyle(fontFamily: 'AbrilFatface', fontSize: 35),),centerTitle: true,backgroundColor: Colors.teal,),
        body:SingleChildScrollView(
        child:   Container(
    child:  Column(

      children: [
        new Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) =>ShowLatestNews()));
                },
                child: new Card(
                  child:  Container(
                   height: 300,
                   width: 170,
                    //margin: EdgeInsets.only(top: 50,left: 20),
                    child: Container(

                     margin: EdgeInsets.only(top: 150,left: 10),
                     // child: new Text(
                     //     'Entertainment',
                     //     style: TextStyle(fontSize: 30,color: Colors.white, fontFamily: 'AbrilFatface')
                     // ),
                   ),
                    decoration: new BoxDecoration(
                      color: const Color(0xfffff),
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop),
                          image: new AssetImage('assets/images/movie.png')
                      ),



                   ),



                 ),



           ),
              ),
            ),
  
           Expanded(
             child: GestureDetector(
               onTap: (){
                 Navigator.push(context, new MaterialPageRoute(builder: (context) =>BitcoinNews()));
               },
               child: new Card(

                 child:  Container(
                   height: 300,
                   width: 170,
                  // margin: EdgeInsets.only(top: 50,left: 20),
                   child: Container(
                     margin: EdgeInsets.only(top: 150,left: 10),
                     // child: new Text(
                     //     'Bitcoin',
                     //     style: TextStyle(fontSize: 25,color: Colors.grey[850], fontFamily: 'AbrilFatface', fontWeight: FontWeight.bold)
                     // ),
                   ),
                   decoration: new BoxDecoration(
                     color: const Color(0xff7c94b6),
                     image: new DecorationImage(
                         fit: BoxFit.cover,
                         colorFilter: new ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop),
                         image: new AssetImage('assets/images/bitcoin.png')
                     ),



                   ),



                 ),



               ),
             ),
           ),
  
  
  
         ],
  
  
  
       ),
       new Row(
         children: [
           Expanded(
             child: GestureDetector(
               onTap: (){
                 Navigator.push(context, new MaterialPageRoute(builder: (context) =>ShowLatestNews()));
               },
               child: Padding(
                 padding: const EdgeInsets.only(bottom:8, left: 4, right: 4),
                 child: Container(
                   color: Colors.teal,
                   child: Center(
                     child: Text(
                       'Entertainment',
                       style: TextStyle(fontSize: 25, fontFamily: 'AbrilFatface', color: Colors.white),
                     ),
                   ),
                 ),
               ),
             ),
           ),
           Expanded(
             child: GestureDetector(
               onTap: (){
                 Navigator.push(context, new MaterialPageRoute(builder: (context) =>BitcoinNews()));
               },
               child: Padding(
                 padding: const EdgeInsets.only(bottom:8, left: 4, right: 4),
                 child: Container(
                   color: Colors.teal,
                   child: Center(
                     child: Text(
                       'Bitcoin',
                        style: TextStyle(fontSize: 25, fontFamily: 'AbrilFatface', color: Colors.white),
                     ),
                   ),
                 ),
               ),
             ),
           )
         ],
       ),
  
       new Row(
  
         children: [
  
           Expanded(
             child: GestureDetector(
             onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) =>BitcoinNews()));
              },
               child: new Card(

                 child:  Container(

                   height: 300,

                   width: 170,



                  // margin: EdgeInsets.only(top: 70,left: 20),



                   child: Container(
                     margin: EdgeInsets.only(top: 150,left: 10),
                     // child: new Text(
                     //     'Business',
                     //     style: TextStyle(fontSize: 30,color: Colors.white, fontFamily: 'AbrilFatface')
                     // ),
                   ),
                   decoration: new BoxDecoration(
                     color: const Color(0xff7c94b6),
                     image: new DecorationImage(
                         fit: BoxFit.cover,
                         colorFilter: new ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop),
                         image: new AssetImage('assets/images/business.png')



                     ),



                   ),



                 ),



               ),
             ),
           ),
  
           Expanded(
             child: GestureDetector(
             onTap: (){
               Navigator.push(context, new MaterialPageRoute(builder: (context) =>BitcoinNews()));
              },
               child: new Card(
                 child:  Container(
                   height: 300,
                   width: 170,

                   //margin: EdgeInsets.only(top: 70,left: 23),

                   child: Container(
                     margin: EdgeInsets.only(top:150,bottom:50),
                     // child: new Text(
                     //     'Article',
                     //     style: TextStyle(fontSize: 30,color: Colors.white, fontFamily: 'AbrilFatface')
                     // ),
                   ),
                   decoration: new BoxDecoration(
                     color: const Color(0xff7c94b6),
                     image: new DecorationImage(
                         fit: BoxFit.cover,
                         colorFilter: new ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop),
                         image: new AssetImage('assets/images/article.png')
                     ),
                   ),
                 ),
               ),
             ),
           ),
           ],
         ),
        new Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) =>ShowLatestNews()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom:8, left: 4, right: 4),
                  child: Container(
                    color: Colors.teal,
                    child: Center(
                      child: Text(
                        'Business',
                        style: TextStyle(fontSize: 25, fontFamily: 'AbrilFatface', color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) =>BitcoinNews()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom:8,left: 4, right: 4),
                  child: Container(
                    color: Colors.teal,
                    child: Center(
                      child: Text(
                        'Article',
                        style: TextStyle(fontSize: 25, fontFamily: 'AbrilFatface', color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
  
       new Row(
  
         children: [
  
           Expanded(
             child: GestureDetector(
             onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) =>BitcoinNews()));
             },
               child: new Card(
                   child:  Container(
                     height: 300,
                     width: 170,
                     //margin: EdgeInsets.only(top: 70,left: 20),
                     child: Container(
                       margin: EdgeInsets.only(top: 150),
                     //   child: new Text(
                     //      'Tech Crunch',
                     //     style: TextStyle(fontSize: 30,color: Colors.white, fontFamily: 'AbrilFatface')
                     // ),
                   ),
                   decoration: new BoxDecoration(
                     color: const Color(0xff7c94b6),
                     image: new DecorationImage(
                         fit: BoxFit.cover,
                         colorFilter: new ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop),
                         image: new AssetImage('assets/images/techCrunch.png')
                     ),
                   ),
                 ),
               ),
             ),
           ),
  
           Expanded(
             child: GestureDetector(
               onTap: (){
                 Navigator.push(context, new MaterialPageRoute(builder: (context) =>HomeView()));
               },
               child: new Card(
                 child:  Container(
                   height: 300,
                   width: 170,
//                 margin: EdgeInsets.only(top: 70,left: 23),
                   child: Container(
                     margin: EdgeInsets.only(top: 150),
                     // child: new Text(
                     //     'Indian News',
                     //     style: TextStyle(fontSize: 30,color: Colors.grey[850], fontFamily: 'AbrilFatface')
                     // ),
                   ),
                   decoration: new BoxDecoration(
                     color: const Color(0xff7c94b6),
                     image: new DecorationImage(
                         fit: BoxFit.cover,
                         colorFilter: new ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop),
                         image: new AssetImage('assets/images/indian.png')
                     ),
                   ),
                 ),
               ),
             ),
           ),
           ],
         ),
        new Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) =>ShowLatestNews()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom:8.0, right: 4, left: 4),
                  child: Container(
                    color: Colors.teal,
                    child: Center(
                      child: Text(
                        'Tech Crunch',
                        style: TextStyle(fontSize: 25, fontFamily: 'AbrilFatface', color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) =>BitcoinNews()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom:8, left: 4, right: 4),
                  child: Container(
                    color: Colors.teal,
                    child: Center(
                      child: Text(
                        'Indian News',
                        style: TextStyle(fontSize: 25, fontFamily: 'AbrilFatface', color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            )
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