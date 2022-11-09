import '../models/publication.dart';
import 'package:http/http.dart' as http;
class RemoteService{
  Future<List<Publication>?> getPublications() async{
      var client =http.Client();
      var uri=Uri.parse('http://localhost:8000/api/publications');
      var response=await client.get(uri);
      if (response.statusCode==200){
         var json= response.body;
         return publicationFromJson(json);
      }

  }
}