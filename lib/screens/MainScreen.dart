import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'BitcoinNewsScreen.dart';
import 'IndianNews.dart';
import 'MoviesNews.dart';

import 'package:news_flutter_test/model/TechCrunch.dart';
import 'package:news_flutter_test/screens/BusinessNewsScreen.dart';
import 'package:news_flutter_test/screens/HealthScreen.dart';
import 'package:news_flutter_test/screens/MoreMainScreen.dart';
import 'package:news_flutter_test/screens/ScienceScreen.dart';

import 'SportsScreen.dart';
import 'TechCrunchScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}



class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg-2.png'),
          )

        ),
        child: Scaffold(
          // appBar: AppBar(
          //   title:
          //   Container(
          //   child: Row(
          //     children: [
          //       Text(
          //         "Choose Field",
          //         style: TextStyle(fontFamily: 'AbrilFatface', fontSize: 35),
          //       ),
          //       SizedBox(width: 100,),
          //       GestureDetector(
          //         onTap: (){
          //         Navigator.push(context, new MaterialPageRoute(builder: (context) => new MoreScreen(),));
          //         },
          //           child: Text("More")
          //       ),
          //       SizedBox(width: 5,),
          //       // GestureDetector(
          //       //   onTap: (){
          //       //
          //       //   },
          //       //     child: Icon(Icons.more_vert)
          //       // ),
          //     ],
          //   ),
          // ),
          //   backgroundColor: Colors.teal,
          //   centerTitle: false,
          //   titleSpacing: 0,
          //   automaticallyImplyLeading: true,
          // ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(

                  children: <Widget>[
                   // SizedBox(width: 20.0, height: 20.0),
                    Container(
                      margin: EdgeInsets.only(top: 50,left: 10),
                      child: RotateAnimatedTextKit(
                          repeatForever: true,
                          totalRepeatCount: 100,
                          isRepeatingAnimation: true,
                          onTap: () {
                            print("Tap Event");
                          },
                          text: ["Entertainment", "Bitcoin", "Business","Sports","Health","Science","Tech Crunch","India"],
                          textStyle: TextStyle(fontSize: 30.0, fontFamily: "PlayfairDisplay",color: Colors.blue,fontWeight: FontWeight.bold,letterSpacing: 2),
                          textAlign: TextAlign.start
                      ),
                    ),
                //    SizedBox(width: 20,),
                    // Container(
                    //   margin: EdgeInsets.only(top: 50),
                    //     child: Text("News",style: TextStyle(fontSize: 30.0, fontFamily: "PlayfairDisplay",color: Colors.blue,fontWeight: FontWeight.bold,letterSpacing: 2))),

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 0,left:3,right: 3),
                  height: 1760,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg-2.png'),
                          fit: BoxFit.cover
                      )

                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 120,),
                      new Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => ShowLatestNews()));
                              },
                              child: new Card(
                                child: Container(
                                  height: 300,
                                  width: 170,

                                  decoration: new BoxDecoration(
                                    color: const Color(0xfffff),
                                    image: new DecorationImage(
                                        fit: BoxFit.cover,
                                        colorFilter: new ColorFilter.mode(
                                            Colors.white.withOpacity(1),
                                            BlendMode.dstATop),
                                        image:
                                        new AssetImage('assets/images/movie.png')),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => BitcoinNews()));
                              },
                              child: new Card(
                                child: Container(
                                  height: 300,
                                  width: 170,

                                  decoration: new BoxDecoration(
                                    color: const Color(0xff7c94b6),
                                    image: new DecorationImage(
                                        fit: BoxFit.cover,
                                        colorFilter: new ColorFilter.mode(
                                            Colors.white.withOpacity(1),
                                            BlendMode.dstATop),
                                        image: new AssetImage(
                                            'assets/images/bitcoin.png')),
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => ShowLatestNews()));
                              },
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 8, left: 4, right: 4),
                                child: Container(
                                  color: Colors.teal,
                                  child: Center(
                                    child: Text(
                                      'Entertainment',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'AbrilFatface',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => BitcoinNews()));
                              },
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 8, left: 4, right: 4),
                                child: Container(
                                  color: Colors.teal,
                                  child: Center(
                                    child: Text(
                                      'Bitcoin',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'AbrilFatface',
                                          color: Colors.white),
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => BusinessScreen()));
                              },
                              child: new Card(
                                child: Container(
                                  height: 300,

                                  width: 170,

                                  decoration: new BoxDecoration(
                                    color: const Color(0xff7c94b6),
                                    image: new DecorationImage(
                                        fit: BoxFit.cover,
                                        colorFilter: new ColorFilter.mode(
                                            Colors.white.withOpacity(1),
                                            BlendMode.dstATop),
                                        image: new AssetImage(
                                            'assets/images/business.png')),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => SportsScreen()));
                              },
                              child: new Card(
                                child: Container(
                                  height: 300,
                                  width: 170,

                                  //margin: EdgeInsets.only(top: 70,left: 23),

                                  child: Container(
                                    margin: EdgeInsets.only(top: 150, bottom: 50),
                                    // child: new Text(
                                    //     'Article',
                                    //     style: TextStyle(fontSize: 30,color: Colors.white, fontFamily: 'AbrilFatface')
                                    // ),
                                  ),
                                  decoration: new BoxDecoration(
                                    color: const Color(0xff7c94b6),
                                    image: new DecorationImage(
                                        fit: BoxFit.cover,
                                        colorFilter: new ColorFilter.mode(
                                            Colors.white.withOpacity(1),
                                            BlendMode.dstATop),
                                        image:
                                        new AssetImage('assets/images/sports.png')),
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => BusinessScreen()));
                              },
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 8, left: 4, right: 4),
                                child: Container(
                                  color: Colors.teal,
                                  child: Center(
                                    child: Text(
                                      'Business',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'AbrilFatface',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => SportsScreen()));
                              },
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 8, left: 4, right: 4),
                                child: Container(
                                  color: Colors.teal,
                                  child: Center(
                                    child: Text(
                                      'Sports',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'AbrilFatface',
                                          color: Colors.white),
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => HealthScreen()));
                              },
                              child: new Card(
                                child: Container(
                                  height: 300,

                                  width: 170,

                                  decoration: new BoxDecoration(
                                    color: const Color(0xff7c94b6),
                                    image: new DecorationImage(
                                        fit: BoxFit.cover,
                                        colorFilter: new ColorFilter.mode(
                                            Colors.white.withOpacity(1),
                                            BlendMode.dstATop),
                                        image: new AssetImage(
                                            'assets/images/health.png')),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => ScienceScreen()));
                              },
                              child: new Card(
                                child: Container(
                                  height: 300,
                                  width: 170,

                                  decoration: new BoxDecoration(
                                    color: const Color(0xff7c94b6),
                                    image: new DecorationImage(
                                        fit: BoxFit.cover,
                                        colorFilter: new ColorFilter.mode(
                                            Colors.white.withOpacity(1),
                                            BlendMode.dstATop),
                                        image: new AssetImage(
                                            'assets/images/science.png')),
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => HealthScreen()));
                              },
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 8, left: 4, right: 4),
                                child: Container(
                                  color: Colors.teal,
                                  child: Center(
                                    child: Text(
                                      'Health',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'AbrilFatface',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => ScienceScreen()));
                              },
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 8, left: 4, right: 4),
                                child: Container(
                                  color: Colors.teal,
                                  child: Center(
                                    child: Text(
                                      'Science',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'AbrilFatface',
                                          color: Colors.white),
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => TechCrunchScreen()));
                              },
                              child: new Card(
                                child: Container(
                                  height: 300,
                                  width: 170,

                                  decoration: new BoxDecoration(
                                    color: const Color(0xff7c94b6),
                                    image: new DecorationImage(
                                        fit: BoxFit.cover,
                                        colorFilter: new ColorFilter.mode(
                                            Colors.white.withOpacity(1),
                                            BlendMode.dstATop),
                                        image: new AssetImage(
                                            'assets/images/techCrunch.png')),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => HomeView()));
                              },
                              child: new Card(
                                child: Container(
                                  height: 300,
                                  width: 170,

                                  decoration: new BoxDecoration(
                                    color: const Color(0xff7c94b6),
                                    image: new DecorationImage(
                                        fit: BoxFit.cover,
                                        colorFilter: new ColorFilter.mode(
                                            Colors.white.withOpacity(1),
                                            BlendMode.dstATop),
                                        image:
                                        new AssetImage('assets/images/indian.png')),
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => TechCrunchScreen()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, right: 4, left: 4),
                                child: Container(
                                  color: Colors.teal,
                                  child: Center(
                                    child: Text(
                                      'Tech Crunch',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'AbrilFatface',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => BitcoinNews()));
                              },
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 8, left: 4, right: 4),
                                child: Container(
                                  color: Colors.teal,
                                  child: Center(
                                    child: Text(
                                      'Indian News',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'AbrilFatface',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      //TODO ADD SOME CHANGES
                      SizedBox(height: 50,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) =>MoreScreen()));
                        },
                        child: new Card(
                          child: Container(
                            height: 100,
                            width: double.infinity,

                            decoration: new BoxDecoration(
                              color: const Color(0xff7c94b6),
                              image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.white.withOpacity(1),
                                      BlendMode.dstATop),
                                  image:
                                  new AssetImage('assets/images/indian.png')),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(bottom: 8, left: 4, right: 4),
                        child: Container(
                          color: Colors.teal,
                          child: Center(
                            child: Text(
                              'More',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'AbrilFatface',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),

                ),

              ],
            ),
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
