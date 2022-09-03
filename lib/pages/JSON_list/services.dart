import 'package:http/http.dart' as http;
import 'users_data.dart';
 class Services{
   static const String url = 'https://jsonplaceholder.typicode.com/posts';
   static Future<List<Users>> getUsers() async{
     try {
       final res = await http.get(url);
       if (res.statusCode == 200) {
         final List<Users> list = usersFromJson(res.body);
         return list;
       } else
         return List<Users>();
     }
     }
     catch(e){

return List<Users>();
     }
   }
   //
