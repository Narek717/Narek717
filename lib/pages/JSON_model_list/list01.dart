import 'package:flutter_inter_project/pages/JSON_model_list/list.dart';
import 'package:http/http.dart' as http;
import 'package:people_data.dart';
 class Services{
   static const String url = 'https://jsonplaceholder.typicode.com/users';
   static Future<List<People>> getPeople() async {
     try {
       final res = await http.get(url);
       if(200== res.statusCode){
         final List<People> people = peopleFromJson(res.body);
         return people;
       }
     }
     catch (e) {
       return List<People>();
     }
   }
 }