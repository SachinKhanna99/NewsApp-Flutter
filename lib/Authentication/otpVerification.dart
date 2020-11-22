
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_flutter_test/Authentication/phoneAuth.dart';
import 'package:news_flutter_test/ClippingWidget/BackArrowClip.dart';
import 'package:news_flutter_test/ClippingWidget/ButtonClip.dart';
import 'package:toast/toast.dart';

import '../color.dart';
import '../constants.dart';


class OTPVerification extends StatefulWidget {
  final String phone, verificationId;

  OTPVerification(this.phone, this.verificationId);


  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  AppBar appbar = AppBar(
    backgroundColor: Colors.white,
  );
// c -> Store the single otp  value

  String c1,c2,c3,c4,c5,c6;
  final codebox1 = TextEditingController();
  final codebox2 = TextEditingController();
  final codebox3 = TextEditingController();
  final codebox4 = TextEditingController();
  final codebox5 = TextEditingController();
  final codebox6 = TextEditingController();
  //deifining color
  Color mg=HexColor("#e20f8a");

  String text = '';

  void _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  @override
 Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    print(widget.phone);
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(

            height: 720,
            // height: _height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageAndBack(height: _height),
                Container(
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 0.0,
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WelcomeWidget(height: _height),
                                SizedBox(height: 90,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'OTP Verification',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'roboto'
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Container(
                                      constraints: const BoxConstraints(maxWidth: 500),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(color: Colors.white, width: 0),
                                              borderRadius: const BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                              child: TextFormField(

                                                controller: codebox1,
                                                onChanged: (value){
                                                  this.c1=value;
                                                    if(codebox1.text.length==1)
                                                      {
                                                        //if textfield is filled then go to next field
                                                        node.nextFocus();
                                                      }
                                                    else if(codebox1.text.length==0)
                                                    {
                                                      // go back to previous field
                                                      FocusScope.of(context).previousFocus();
                                                    }
                                                },



                                                keyboardType: TextInputType.number,
                                                showCursor: true,
                                                cursorColor: Color(0xff14225f),
                                                cursorHeight: 50,

                                               // maxLength: 1,
                                              inputFormatters: [LengthLimitingTextInputFormatter(1),],

                                                textInputAction: TextInputAction.next,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  focusedBorder: InputBorder.none,
                                                  enabledBorder: InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(color: Colors.white, width: 0),
                                              borderRadius: const BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                              child: TextFormField(
                                                controller: codebox2,
                                              //  onFieldSubmitted: (_) => context.nextEditableTextFocus(),
                                                keyboardType: TextInputType.number,
                                                onChanged: (value){
                                                  this.c2=value;
                                                  if(codebox2.text.length==1)
                                                  {
                                                    node.nextFocus();
                                                  }
                                                  else if(codebox2.text.length==0)
                                                  {
                                                    FocusScope.of(context).previousFocus();
                                                  }
                                                },
                                                showCursor: true,
                                                inputFormatters: [LengthLimitingTextInputFormatter(1),],
                                                textInputAction: TextInputAction.next,
                                                cursorColor: Color(0xff14225f),
                                                cursorHeight: 50,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  focusedBorder: InputBorder.none,
                                                  enabledBorder: InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder: InputBorder.none,

                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,


                                              border: Border.all(color: Colors.white, width: 0),
                                              borderRadius: const BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                              child: TextFormField(
                                                controller: codebox3,
                                                keyboardType: TextInputType.number,
                                                showCursor: true,
                                                onChanged: (value){
                                                  this.c3=value;
                                                  if(codebox3.text.length==1)
                                                  {
                                                    node.nextFocus();
                                                  }
                                                  else if(codebox3.text.length==0)
                                                  {
                                                    FocusScope.of(context).previousFocus();
                                                  }
                                                },
                                                cursorColor: Color(0xff14225f),
                                                cursorHeight: 50,
                                                inputFormatters: [LengthLimitingTextInputFormatter(1),],
                                                textInputAction: TextInputAction.next,
                                              //  onFieldSubmitted: (_) => context.nextEditableTextFocus(),
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  focusedBorder: InputBorder.none,
                                                  enabledBorder: InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(color: Colors.white, width: 0),
                                              borderRadius: const BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                              child: TextFormField(
                                                controller: codebox4,
                                                onChanged: (value){
                                                  this.c4=value;
                                                  if(codebox4.text.length==1)
                                                  {
                                                    node.nextFocus();
                                                  }
                                                  else if(codebox4.text.length==0)
                                                  {
                                                    FocusScope.of(context).previousFocus();
                                                  }

                                                },
                                                keyboardType: TextInputType.number,
                                                showCursor: true,

                                                inputFormatters: [LengthLimitingTextInputFormatter(1),],
                                                textInputAction: TextInputAction.next,
                                                cursorColor: Color(0xff14225f),
                                                cursorHeight: 50,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  focusedBorder: InputBorder.none,
                                                  enabledBorder: InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(color: Colors.white, width: 0),
                                              borderRadius: const BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                              child: TextFormField(
                                                controller: codebox5,
                                                onChanged: (value){
                                                  this.c5=value;
                                                  if(codebox5.text.length==1)
                                                  {
                                                    node.nextFocus();
                                                  }
                                                  else if(codebox5.text.length==0)
                                                  {
                                                    FocusScope.of(context).previousFocus();
                                                  }

                                                },
                                                keyboardType: TextInputType.number,
                                                inputFormatters: [LengthLimitingTextInputFormatter(1),],
                                                textInputAction: TextInputAction.next,
                                                showCursor: true,
                                                cursorColor: Color(0xff14225f),
                                                //onFieldSubmitted: (_) => context.nextEditableTextFocus(),
                                                cursorHeight: 50,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  focusedBorder: InputBorder.none,
                                                  enabledBorder: InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(color: Colors.white, width: 0),
                                              borderRadius: const BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 1.0),
                                              child: TextFormField(
                                                controller: codebox6,
                                                onChanged: (value){
                                                  this.c6=value;
                                                  if(codebox6.text.length==1)
                                                  {
                                                    node.nextFocus();
                                                  }
                                                  else if(codebox6.text.length==0)
                                                    {
                                                      FocusScope.of(context).previousFocus();
                                                    }

                                                },
                                                keyboardType: TextInputType.number,
                                                showCursor: true,
                                                inputFormatters: [LengthLimitingTextInputFormatter(1),],
                                                textInputAction: TextInputAction.next,
                                                cursorColor: Color(0xff14225f),
                                                cursorHeight: 50,

                                                decoration: InputDecoration(
                                                  border: InputBorder.none,

                                                  focusedBorder: InputBorder.none,
                                                  enabledBorder: InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:50.0,
                                    ),
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
                                    GestureDetector(
                                      onTap: (){
                                        LoginStoreBase().getCodeWithPhoneNumber(context, "+91"+widget.phone.toString());
                                      },
                                      child: Container(
                                        child: Text(
                                          'Resend OTP',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            decoration: TextDecoration.underline,
                                            decorationColor: mg
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],

                                ),

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
                        onTap: () {

                          String all=c1+c2+c3+c4+c5+c6;

                          if(all.isEmpty)
                            {
                              Toast.show("Please Enter Otp Code", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                            }

                          else
                            {
                              print("------------->"+all);
                           LoginStoreBase().validateOtpAndLogin( context,all);
                            }
                          print(all);

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
                                  "Login",
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
//
// class OTPCode extends StatelessWidget {
//   final String phone, verificationId;
//   BuildContext context;
//   OTPCode({this.phone,this.verificationId});
//
//
//   @override
//   Widget build(BuildContext context) {
//
//
//
//
//
//
//     return
//   }
//
//
//   }

  // Widget otpNumberWidget() {
  //
  //   return Container(
  //     height: 10,
  //     width: 10,
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       border: Border.all(color: Colors.white, width: 0),
  //       borderRadius: const BorderRadius.all(
  //         Radius.circular(8),
  //       ),
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: 1.0),
  //       child: TextFormField(
  //         controller: _codebox1,
  //         keyboardType: TextInputType.number,
  //         showCursor: true,
  //         cursorColor: Color(0xff14225f),
  //         cursorHeight: 50,
  //         decoration: InputDecoration(
  //           border: InputBorder.none,
  //           focusedBorder: InputBorder.none,
  //           enabledBorder: InputBorder.none,
  //           errorBorder: InputBorder.none,
  //           disabledBorder: InputBorder.none,
  //         ),
  //       ),
  //     ),
  //   );
 // }

  // const OTPCode({
  //   Key key,
  //   @required double height,
  // })  : _height = height,
  //       super(key: key);

  // final double _height;

//   @override
//   Widget build(BuildContext context) {
//
//
//
//
// }

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
          height: 1.0,
          width: 50.0,
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
extension Utility on BuildContext {
  void nextEditableTextFocus() {
    do {
      FocusScope.of(this).nextFocus();
    } while (FocusScope.of(this).focusedChild.context.widget is! EditableText);
  }
}
