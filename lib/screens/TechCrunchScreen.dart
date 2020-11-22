import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:news_flutter_test/model/TechCrunch.dart';
import 'package:news_flutter_test/services/TechCrunchServices.dart';

import '../description.dart';

class TechCrunchScreen extends StatefulWidget {
  @override
  _TechCrunchScreenState createState() => _TechCrunchScreenState();
}

class _TechCrunchScreenState extends State<TechCrunchScreen> {
  Future<TechCrunch> _techcrunchmodel;

  @override
  void initState() {
    _techcrunchmodel=TechCrunchServices().fetch();
    print("Run");
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tech News"),

      ),
      body: Container(
        child: FutureBuilder<TechCrunch>(
          future: _techcrunchmodel,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.articles.length,
                  itemBuilder: (context, index) {
                    var article = snapshot.data.articles[index];
                    var formattedTime = DateFormat('dd MMM - HH:mm')
                        .format(article.publishedAt);
                    var weburl=article.url;
                    var im=article.urlToImage;
                    var des=article.description;
                    var isdes=false;
                    if(des==null)
                    {
                      isdes=true;
                    }

                    var isimage=false;

                    if(im==null)
                    {
                      isimage=true;
                    }
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => new Description(
                            article.title,article.description,
                            formattedTime,article.author,formattedTime,weburl,im

                        ),));
                      },
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.all(8),
                        child: Row(
                          children: <Widget>[
                            Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: isimage ?Icon(Icons.not_interested,size: 130,): Image.network(article.urlToImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(formattedTime),
                                  Text(
                                    article.title,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  isdes?Text("Description not available"):
                                  Text(
                                    article.description,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            } else
              return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
