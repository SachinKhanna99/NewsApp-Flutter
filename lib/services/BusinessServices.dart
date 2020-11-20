import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as https;
import 'package:news_flutter_test/model/Bitcoin.dart';
import 'package:news_flutter_test/model/Business.dart';



class BusinessServices {
  static var client=https.Client;

  Future<Business> fetch() async{
    var response=await https.get("https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=e952ae07f0a047a9a9727b5da87ac3eb");
    var jsonModel=null;
    try{
      if(response.statusCode==200)
      {
        var jsonString=response.body;
        var jsonMap=jsonDecode(jsonString);
        print(jsonMap.toString());
        jsonModel= Business.fromJson(jsonMap);
        print("Succession");


      }
    }catch(Exception)
    {
      return jsonModel;
    }

    return jsonModel;

  }
}