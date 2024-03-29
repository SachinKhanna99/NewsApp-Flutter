import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:news_flutter_test/model/Apple.dart';
import 'package:news_flutter_test/services/AppleServices.dart';

import '../description.dart';
class AppleNews extends StatefulWidget {
  @override
  _AppleNewsState createState() => _AppleNewsState();
}

class _AppleNewsState extends State<AppleNews> {

  Future<Apple> _applemodel;

  @override
  void initState() {
    _applemodel=AppleServices().fetch();
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Innovation News"),

      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Container(

          margin: EdgeInsets.all(5),
          child: FutureBuilder<Apple>(
            future: _applemodel,
            builder: (context, snapshot) {
              if(snapshot.hasData)
              {
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemBuilder: (context, index) {
                    var article = snapshot.data.articles[index];
                    var im=snapshot.data.articles[index].urlToImage;
                    var formattedTime = DateFormat('dd MMM ')
                        .format(article.publishedAt);
                    var weburl=article.url;

                    var formatTime=DateFormat('HH:mm').format(article.publishedAt);
                    var isimage=false;

                    if(im==null)
                    {
                      isimage=true;
                    }

                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => new Description(
                            article.title,article.description,
                            formatTime,article.author,formattedTime,weburl,im

                        ),));
                        print(article.description);
                        print(article.title);
                      },
                      child: Container(
                        child: SingleChildScrollView(
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),

                                child: isimage ?Icon(Icons.not_interested,size: 130,): Image.network(article.urlToImage,
                                  fit: BoxFit.cover,

                                ),

                              ),
                              SizedBox(height: 10,width: 10,),

                              Container(
                                color: Colors.amber,

                                child: Text(article.title,
                                  overflow: TextOverflow.ellipsis ,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      formattedTime,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(width: 50,),
                                  Container(
                                    child: Text(
                                      formatTime,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                ],
                              ),



                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: snapshot.data.articles.length,
                  staggeredTileBuilder: (index)=> new StaggeredTile.fit(1),crossAxisSpacing: 15,mainAxisSpacing: 40,

                );
              }
              else{
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },

          ),
        ),
      ),
    );
  }
}
