import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiProvider {
  static Future<List<Place>>loadPlace() async {
    final response = await http.get('http://lp.js-cambodia.com/rupp/places.php');
    // final response = await http.get('http://localhost/server/index.php');
    if(response.statusCode == 200){
      print('load place success');
      final placesJson = json.decode(response.body);
      List<Place> names = List<Place>();
      for(final placeJson in placesJson){
        final place = Place.formJson(placeJson);
        names.add(place);
      }
      return names;
    }else{
      print('Load place error. ${response.statusCode}');
      return null;
    }
  }
}
class Place{
  String name;
  String location;
  int rate;
  String imageUrl;
  Place({this.name,this.location,this.rate,this.imageUrl});

  Place.formJson(dynamic json){
    name = json['name'];
    location = json['location'];
    rate = json['rate'];
    imageUrl = json['imageUrl'];
  }
}