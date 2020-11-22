
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:news_flutter_test/Authentication/mobileLogin.dart';

import 'dart:convert' as JSON;

import '../color.dart';
import '../fbpage.dart';
import 'UserDetail1.dart';
import 'UserGoogle.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  String email;
  String name;
  Future<String> siginwithgoogle(BuildContext context) async {
    final GoogleSignInAccount account = await googleSignIn.signIn();
    final GoogleSignInAuthentication authentication = await account
        .authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: authentication.idToken,
        accessToken: authentication.accessToken);
    final User user = (await _auth.signInWithCredential(credential)).user;
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);
    assert(user.email != null);
    assert(user.displayName != null);
    assert(user.photoUrl != null);
    name = user.displayName;
    email = user.email;
    if(user.uid!=null)
    {
      print("Run");
      Navigator.push(context,new MaterialPageRoute(builder: (context) => new UserDetails1(),));
    }

    if (name.contains(" ")) {
      name = name.substring(0, name.indexOf(" "));
    }

    final User currentuser = await _auth.currentUser;
    assert(user.uid == currentuser.uid);
    return 'Signin google Succeed $user';
  }

Color color=HexColor("#13235f");
Color fb=HexColor("#4267b2");
Color mg=HexColor("#e20f8a");
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(

        child: Center(
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top: 40),
                  child: Image.asset('assets/images/icon.png',width: 100,height: 95,)
              ),
              SizedBox(height: 20,),
           Container(
               child: Image.asset('assets/images/started.png',width: 250,height: 250,)
           ),
              SizedBox(height: 40,),
           Container(

             child: FlatButton.icon(
               icon: Image.asset('assets/images/facebook.png',width: 40,height: 47,),
               color: fb,
               padding: EdgeInsets.all(7),
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),

              ),
               label: Text("   Login With Facebook            ",style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: 'roboto',letterSpacing: 1),),
               onPressed: (){
                 print("hellooo");
                 Fbpage().openModalBottomSheet(context: context);
                 },
             ),
           ),
          SizedBox(height: 10,),
              Container(

                child: FlatButton.icon(
                  icon: Image.asset('assets/images/goo.png',width: 40,height: 47,),
                  color: Colors.white,
                  padding: EdgeInsets.all(7),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  label: Text("    Login With Google               ",style: TextStyle(color: Colors.black,fontSize: 17,fontFamily: 'roboto',letterSpacing: 1),),
                  onPressed: () {

                   siginwithgoogle(context).then((user)
                    {
                      if(user!=null)
                        {
                          print(name);
                          print('Logged in successfully.');
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => new UserGoogle(name.toString()),));

                        }
                      else
                        {
                          print("Error: ");
                        }
                    });


                  }

                ),
              ),
              SizedBox(height: 10,),
              Container(
                // margin: EdgeInsets.only(left: 65),
                child: FlatButton.icon(
                  // icon: Icon(Icons.phone_android_outlined,size: 50,),
                  icon: Image.asset('assets/images/smartphone.png',width: 40,height: 47,),
                  color: mg,
                  padding: EdgeInsets.all(5),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  label: Text("   Login With Phone Number     ",style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: 'roboto',letterSpacing: 1),),
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => new MobileLogin(),));
                  },

                ),
              ),
           //    SizedBox(height: 15,),
           //    GestureDetector(
           //      onTap: (){
           //        _launchURL();
           //      },
           //      child: Text("I agree with terms and privacy policy",style: TextStyle(color: Colors.white,fontFamily: 'roboto',fontSize: 13,
           // ),),
           //    ),
           //
           //    Container(
           //      margin: EdgeInsets.only(left: 70),
           //      child: Text("                                                                                                          ",style: TextStyle(color: Colors.white,fontFamily: 'roboto',fontSize: 5,decoration: TextDecoration.underline,decorationColor: mg,decorationThickness: 3
           //      ),),
           //    ),
              //


            ],
          ),
        ),
      ),
    );
  }
}

class sigingooge {

  String email;
  String name;
  BuildContext context;


  final FirebaseAuth _auth = FirebaseAuth.instance;

  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<String> siginwithgoogle(BuildContext context) async {
    final GoogleSignInAccount account = await googleSignIn.signIn();
    final GoogleSignInAuthentication authentication = await account
        .authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: authentication.idToken,
        accessToken: authentication.accessToken);

   // final AuthResult result = await _auth.signInWithCredential(credential);
    final User user = (await _auth.signInWithCredential(credential)).user;

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);
    assert(user.email != null);
    assert(user.displayName != null);
    assert(user.photoUrl != null);

    name = user.displayName;
    email = user.email;
    if(user.uid!=null)
      {
        print("Run");
        Navigator.push(context,new MaterialPageRoute(builder: (context) => new UserDetails1(),));
      }

    if (name.contains(" ")) {
      name = name.substring(0, name.indexOf(" "));
    }

    final User currentuser = await _auth.currentUser;
    assert(user.uid == currentuser.uid);
    return 'Signin google Succeed $user';
  }

  void Signoutgoogle() async{
    await googleSignIn.signOut();
    print("Sign Out");
  }

}
