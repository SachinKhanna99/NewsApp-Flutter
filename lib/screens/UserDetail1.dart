import 'package:flutter/material.dart';
import 'package:news_flutter_test/ClippingWidget/BackArrowClip.dart';
import 'package:news_flutter_test/ClippingWidget/ButtonClip.dart';
import 'package:toast/toast.dart';

import '../constants.dart';
import 'MainScreen.dart';




class UserDetails1 extends StatefulWidget {
  // final FirebaseUser user;
  // UserDetails1({this.user});
  @override
  UserDetails1State createState() => UserDetails1State();
}

class UserDetails1State extends State<UserDetails1> {
  TextEditingController name=new TextEditingController();
  TextEditingController city=new TextEditingController();
  AppBar appbar = AppBar(
    backgroundColor: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
String validator()
{
  String p;
  if(name.text.length<=9)
    {
      print("Working");
      p=name.text;
    }
  else
    {
      print("kyo");
      p=name.text.toString().substring(0,10);
    }
  return p;
}
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 720,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageAndBack(height: _height),
                Container(
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 25.0),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WelcomeWidget(height: _height),

                                  SizedBox(height: 70),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Enter your Name',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,

                                          fontFamily: 'roboto'
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    TextFormField(
                                      controller: name,
                                      decoration: InputDecoration(
                                        hintText: "  e.g John",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 17.0,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                        fillColor: Color(0xfff3f3f4),
                                        filled: true,
                                      ),
                                      cursorColor: kPrimaryColor,
                                      textInputAction: TextInputAction.done,
                                      keyboardType: TextInputType.name,
                                    ),

                                  ],
                                ),
                                  SizedBox(height: 32),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Enter your City',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,

                                            fontFamily: 'roboto'
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      TextFormField(
                                        controller: city,
                                        decoration: InputDecoration(
                                          hintText: "  e.g.Stafford",
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 17.0,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              width: 0,
                                              style: BorderStyle.none,
                                            ),
                                          ),
                                          fillColor: Color(0xfff3f3f4),
                                          filled: true,
                                        ),
                                        cursorColor: kPrimaryColor,
                                        textInputAction: TextInputAction.done,
                                        keyboardType: TextInputType.name,
                                      ),

                                    ],
                                  ),
                                  // Spacer(),
                                  //city
                                  //stafford
                                  Opacity(
                                      opacity: 0.0,
                                      child: ResendOTP(height: _height)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: CustomPaint(
                          painter: BackButtonCustomCurve(),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 8.0),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()async {
                          if(name.text.toString().isEmpty)
                            {
                              Toast.show("Please Enter Your Name", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                            }
                          else if(city.text.isEmpty)
                            {
                              Toast.show("Please Enter Your City Name", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                            }
                          else
                            {
                              await Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context) => new MainScreen(),), (route) => false);

                            }

                        },
                        child: CustomPaint(
                          painter: ButtonCustomCurve(),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Submit",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResendOTP extends StatelessWidget {
  const ResendOTP({
    Key key,
    @required double height,
  })  : _height = height,
        super(key: key);

  final double _height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            'Didn\'t receive an OTP?',
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: _height * 0.01,
        ),
        Container(
          child: Text(
            'Resend OTP',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}

class FormWidget extends StatelessWidget {
  TextEditingController name=new TextEditingController();
  FormWidget({
    this.title,
    this.placeholder,
    this.name,
    Key key,
    @required double height,
  })  : _height = height,
        super(key: key);

  final double _height;
  final String title;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            'Enter your $title',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: name,
          decoration: InputDecoration(
            hintText: "e.g $placeholder",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            fillColor: Color(0xfff3f3f4),
            filled: true,
          ),
          cursorColor: kPrimaryColor,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.name,
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
      ],
    );
  }
}

// **************************  Welcome to Kailer *****************

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    Key key,
    @required double height,
  })  : _height = height,
        super(key: key);

  final double _height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 3.0,
          width: 60.0,
          decoration: BoxDecoration(color: Colors.white),
        ),
        SizedBox(
          height: _height * 0.015,
        ),
        Container(
          child: Text(
            "Welcome To,",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontFamily: 'roboto'
            ),
          ),
        ),
        SizedBox(
          height: _height * 0.008,
        ),
        Container(
          child: Text(
            "Kailer",
            style: TextStyle(
                color: Colors.white,
                fontSize: 29.0,
                fontFamily: 'roboto'
            ),
          ),
        ),
      ],
    );
  }
}

class ImageAndBack extends StatelessWidget {
  const ImageAndBack({
    Key key,
    @required double height,
  })  : _height = height,
        super(key: key);

  final double _height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            "assets/images/img-2.png",
            height: 150,
            width: 300,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
