import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:news_flutter_test/controller/packagecontroller.dart';
import 'package:news_flutter_test/description.dart';
import 'package:news_flutter_test/model/package.dart';
import 'package:news_flutter_test/services/package_Services.dart';
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<Welcome> _newsmodel;

//  final PackageController productcontroller=Get.put(PackageController());


  @override
  void initState() {
    _newsmodel=RemoteServices().fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indian News"),

      ),
      body: Container(
        child: FutureBuilder<Welcome>(
          future: _newsmodel,
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



//   return Scaffold(
//       appBar: AppBar(title: Text("News App"),),
//     body: Container(
//       child: FutureBuilder<Welcome>(
//         future: _newsmodel,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//                 itemCount: snapshot.data.articles.length,
//                 itemBuilder: (context, index) {
//                   var article = snapshot.data.articles[index];
//                   // var formattedTime = DateFormat('dd MMM - HH:mm')
//                   //     .format(article.publishedAt);
//                   return Container(
//                     height: 100,
//                     margin: const EdgeInsets.all(8),
//                     child: Row(
//                       children: <Widget>[
//                         Card(
//                           clipBehavior: Clip.antiAlias,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(24),
//                           ),
//                           child: AspectRatio(
//                               aspectRatio: 1,
//                               child: Image.network(
//                                 article.urlToImage,
//                                 fit: BoxFit.cover,
//                               )),
//                         ),
//                         SizedBox(width: 16),
//                         Flexible(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                             //  Text(formattedTime),
//                               Text(
//                                 article.title,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 article.description,
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 });
//           } else
//             return Center(child: CircularProgressIndicator());
//         },
//       ),
//     ),
//     );



//  body: Column(
//
//         children: [
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Row(
//               children: [
//                 Expanded(
//                     child: Text("Shop "),
//
//                 ),
//                IconButton(icon: Icon(Icons.filter_alt_outlined),onPressed: (){ },),
//                 IconButton(icon: Icon(Icons.list_outlined),onPressed: (){ },),
//
//
//               ],
//             ),
//           ),
//           Expanded(
//             child: Obx(()=>
//              StaggeredGridView.countBuilder(
//                   crossAxisCount: 4,
//                 itemCount: productcontroller.productlist.length,
//
//                 itemBuilder: (context,index){
//                     return Container(
//                     height: 200,
//                       width: 100,
//                       color: Colors.amber,
//                       child: Center(child: Text("Je sajan kale dil de ne",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 2))),
//                     );
//                 },
//               staggeredTileBuilder: (index) => new StaggeredTile.count(2, index.isEven ?2 :1),
//                 crossAxisSpacing: 4,
//                 mainAxisSpacing: 4,
//               ),
//             ),
//           )
//         ],
//
//
//       ),