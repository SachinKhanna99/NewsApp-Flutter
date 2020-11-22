
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:news_flutter_test/screens/UserDetail1.dart';
import 'package:toast/toast.dart';

import 'otpVerification.dart';
class LoginStoreBase {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  static String actualCode;
  bool isLoginLoading = false;
  bool isOtpLoading = false;
  GlobalKey<ScaffoldState> loginScaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> otpScaffoldKey = GlobalKey<ScaffoldState>();
  User firebaseUser;
  Future<bool> isAlreadyAuthenticated() async {
    firebaseUser = await _auth.currentUser;
    if (firebaseUser != null) {
      return true;
    } else {
      return false;
    }
  }


  Future<void> getCodeWithPhoneNumber(BuildContext context,
      String phoneNumber) async {
    isLoginLoading = true;

    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (AuthCredential auth) async {
          // final User user = (await _auth.signInWithCredential(auth)).user;
          await _auth
              .signInWithCredential(auth)
              .then((UserCredential user) {
            if (user != null && user != null)
            {
              print('Authentication successful');
              Toast.show("Authentication successful", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              onAuthenticationSuccessful(context, user);
            } else {

            //  Toast.show("ERRRor : Invalid code", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
            }
          }).catchError((error) {

            // Toast.show("ERRRor"+error.toString(), context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
          });
        },
        verificationFailed: (FirebaseAuthException authException) {
          print('Error message: ' + authException.message);
        //  Toast.show( authException.message.toString()+"ERRRor", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

        },
        codeSent: (String verificationId, [int forceResendingToken]) async {
          actualCode = verificationId;
          isLoginLoading = false;
          await Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => OTPVerification(phoneNumber, verificationId)));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          actualCode = verificationId;
        }
    );
  }


  Future<String> validateOtpAndLogin(BuildContext context, String smsCode) async{
  //  isOtpLoading = true;
     AuthCredential _authCredential = PhoneAuthProvider.getCredential(
        verificationId: actualCode, smsCode: smsCode);

    await _auth.signInWithCredential(_authCredential).catchError((error) {
      //isOtpLoading = false;
      print("---------------------Error: "+error.toString());
   //   Toast.show(error.toString()+"ERRRor", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);


    }).then((UserCredential authResult) {
      if (authResult != null && authResult.user != null) {
        print('Authentication successful');
        onAuthenticationSuccessful(context, authResult);
      }
    });
  }

  Future<void> onAuthenticationSuccessful(BuildContext context,
      UserCredential result) async {


    firebaseUser = result.user;


Navigator.push(context, new MaterialPageRoute(builder: (context) => new UserDetails1(),));
  }
}  //

