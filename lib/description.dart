import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
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

    return Scaffold(
      appBar: AppBar(title: Text(
          widget.title.toString().trim(),

        maxLines: 1,
      ),),
      body: Container(

        child: Center(
          child: Column(
            
            children: [
              Container(
                height: 300,
                width: 300,
              child: Image(image: NetworkImage(widget.image,),height: 200,width: 200,fit: BoxFit.cover,),

              ),
              Container(

                child: Text(
                    widget.description.toString(),
                  style: TextStyle(fontSize: 17),
                ),

              ),
              SizedBox(height: 100,),

              Row(
                children: [
                  Text(widget.date),
                  SizedBox(width: 100,),
                  Text(widget.time),
                SizedBox(width: 100,),
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
                   child: Icon(Icons.share)
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
