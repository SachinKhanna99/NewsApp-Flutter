import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as https;
import 'package:news_flutter_test/model/Apple.dart';
import 'package:news_flutter_test/model/Bitcoin.dart';



class AppleServices {
  static var client=https.Client;

  Future<Apple> fetch() async{
    var response=await https.get("https://newsapi.org/v2/everything?q=apple&from=2020-11-19&to=2020-11-19&sortBy=popularity&apiKey=e952ae07f0a047a9a9727b5da87ac3eb");
    var jsonModel=null;
    try{
      if(response.statusCode==200)
      {
        var jsonString=response.body;
        var jsonMap=jsonDecode(jsonString);
        print(jsonMap.toString());
        jsonModel= Apple.fromJson(jsonMap);
        print("Succession");


      }
    }catch(Exception)
    {
      return jsonModel;
    }

    return jsonModel;

  }
}