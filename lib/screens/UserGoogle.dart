import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_flutter_test/ClippingWidget/BackArrowClip.dart';
import 'package:news_flutter_test/ClippingWidget/ButtonClip.dart';
import 'package:toast/toast.dart';

import '../constants.dart';
import 'Authentication.dart';
import 'MainScreen.dart';


class UserGoogle extends StatefulWidget {
  final String name;
  UserGoogle(this.name);


  @override
  UserGoogleState createState() => UserGoogleState();
}

class UserGoogleState extends State<UserGoogle> {


  bool change=true;


  final city=new TextEditingController();
  TextEditingController nname= new TextEditingController();


  AppBar appbar = AppBar(
    backgroundColor: Colors.white,
  );
  textListener() {
    change=true;
    print("Current Text is ${nname}");

  }

  @override
  Widget build(BuildContext context) {

    TextEditingController username= new TextEditingController(text: widget.name);
    _printLatestValue() {
      print("Second text field: ${username.text}");
    }

    nname.addListener(_printLatestValue);
    print(widget.name);


    @override
    void initState() {
      super.initState();
      // Start listening to changes
      change=true;
      username.addListener(textListener);
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
                                        controller: change ? username : nname,

                                        onTap: () {
                                          change = false;
                                          //nname.text=widget.name;
                                        },
                                        validator: (val) {
                                          if (val.isEmpty) {
                                            print("))Emoty");
                                          }
                                        },
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
                                      // Container(
                                      //   constraints: const BoxConstraints(maxWidth: 500),
                                      //   child: Row(
                                      //     mainAxisAlignment: MainAxisAlignment.start,
                                      //     crossAxisAlignment: CrossAxisAlignment.center,
                                      //     children: [],
                                      //   ),
                                      // ),
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
                          Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context) => Authentication(),), (route) => false);
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

                        onTap: () {

                          if (change) {
                            print("ASDAS");
                            if (username.text.toString().isEmpty) {
                              Toast.show("Please Enter Your Name", context,
                                  duration: Toast.LENGTH_SHORT,
                                  gravity: Toast.BOTTOM);
                            } else {
                              if (city.text.isEmpty) {
                                Toast.show("Please Enter Your City", context,
                                    duration: Toast.LENGTH_SHORT,
                                    gravity: Toast.BOTTOM);
                              } else {
                                if(username.text.toString().length>=9 || nname.text.toString().length>=9)
                                {
                                Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context) =>MainScreen(),), (route) => false);
                                }
                                else{
                       Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context) => MainScreen(),), (route) => false);
                                }

                              }
                            }
                          } else if (!change) {
                            if (nname.text.toString().isEmpty) {
                              Toast.show("Please Enter Your Name", context,
                                  duration: Toast.LENGTH_SHORT,
                                  gravity: Toast.BOTTOM);
                            } else {
                              if (city.text.isEmpty) {
                                Toast.show("Please Enter Your City", context,
                                    duration: Toast.LENGTH_SHORT,
                                    gravity: Toast.BOTTOM);
                              } else {
                                if(username.text.toString().length>=9 || nname.text.toString().length>=9)
                                {
                               Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context) => new MainScreen(),), (route) => false);
                                }
                                else{
                       Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context) => new MainScreen(),), (route) => false);
                                }

                              }
                            }
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
