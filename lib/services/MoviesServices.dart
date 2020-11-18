import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as https;
import 'package:news_flutter_test/model/Movies.dart';


class  MoviesServices{
  static var client=https.Client;

  Future<Movies> fetch() async{
    var response=await https.get("https://newsapi.org/v2/top-headlines?country=in&category=entertainment&apiKey=e952ae07f0a047a9a9727b5da87ac3eb");
    var jsonModel=null;
    try{
      if(response.statusCode==200)
      {
        var jsonString=response.body;
        var jsonMap=jsonDecode(jsonString);
        print(jsonMap.toString());
        jsonModel= Movies.fromJson(jsonMap);
        print("Succession");


      }
    }catch(Exception)
    {
      return jsonModel;
    }

    return jsonModel;

  }
}