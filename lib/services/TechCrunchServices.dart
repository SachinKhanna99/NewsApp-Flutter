import 'dart:convert';
import 'package:http/http.dart' as https;
import 'package:news_flutter_test/model/TechCrunch.dart';
import 'package:news_flutter_test/model/package.dart';

class TechCrunchServices {
  static var client=https.Client;

  Future<TechCrunch> fetch() async{
    var response=await https.get("https://newsapi.org/v2/top-headlines?country=in&category=technology&apiKey=e952ae07f0a047a9a9727b5da87ac3eb");
    var jsonModel=null;
    try{
      if(response.statusCode==200)
      {
        var jsonString=response.body;
        var jsonMap=jsonDecode(jsonString);
        print(jsonMap.toString());
        jsonModel= TechCrunch.fromJson(jsonMap);
        print("Succession");


      }
    }catch(Exception)
    {
      return jsonModel;
    }

    return jsonModel;

  }
}