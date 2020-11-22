
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share/share.dart';
import 'package:toast/toast.dart';
// ignore: must_be_immutable
class Description extends StatefulWidget {
  var title,description,time,date,author,url,image;
  Description(this.title,this.description,this.time,this.author,this.date,this.url,this.image);
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {

    var emptyim=false;
    File _imageFile;
    ScreenshotController screenshotController = ScreenshotController();

//TODO Do some ui changes
    if(widget.image==null)
      {
        emptyim=true;
      }
    return Scaffold(
      // appBar: AppBar(title: Text(
      //     widget.title.toString().trim(),
      //
      //   maxLines: 1,
      // ),),
      body: Screenshot(
        controller: screenshotController,
        child: Container(

          child: Center(
            child: Column(
              //TODO Do some ui changes
              children: [

                SizedBox(height: 50,),
                Text(widget.title),
                SizedBox(height: 30,),
                Container(

                  height: 300,
                  width: 300,

                //TODO Change image and set empty image
                child: Image(image: emptyim ? AssetImage('assets/images/article.png') : NetworkImage(widget.image,),height: 200,width: 200,fit: BoxFit.cover,),

                ),
                SizedBox(height: 50,),
                Container(

                  child: Text(
                      widget.description.toString(),
                    style: TextStyle(fontSize: 17),
                  ),

                ),
                SizedBox(height: 80,),

                Row(
                  children: [
                    SizedBox(width: 100,),
                    Text(widget.date),

                  SizedBox(width: 70,),

                 GestureDetector(
                   onTap: () async{
                     String s=widget.url;
                    // await Share.share(s);
                await FlutterShare.share(
                        title: 'News',
                        text: 'Here is a news for you',
                        linkUrl: s,
                        chooserTitle: 'Share News');

                    print("Working"+s);
                   },
                     child: Icon(Icons.share),
                 ),

                  ],
                ),
              ],

            ),
          ),
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            final directory = (await getApplicationDocumentsDirectory()); //from path_provide package
            String appDocumentsPath = directory.path;
            String fileName = DateTime.now().toIso8601String();
            var path = '$appDocumentsPath/$fileName.png';
            _imageFile = null;
            screenshotController
                .capture(path: path)
                .then((File image) async {
              //print("Capture Done");
              setState(() {
                _imageFile = image;
                Toast.show("Image Saved", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              });
              final result = await ImageGallerySaver.saveImage(image.readAsBytesSync()); // Save image to gallery,  Needs plugin  https://pub.dev/packages/image_gallery_saver
              print("File Saved to Gallery");
              print(path);
            }).catchError((onError) {
              print(onError);
            });
          },
          tooltip: 'Save Image',
          child: Icon(Icons.image),
        )
    );
  }
}
