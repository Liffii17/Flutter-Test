import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class WorldTime {

  String location; // location name foe ui
  String time; // the time add the location
  String flag; // url to an asset flag icon
  String url; //location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.url, required this.time});

Future <void> getTime() async{

   try{

    var response = await http.get(Uri.http('worldtimeapi.org','/api/timezone/$url'));
    var data =  convert.jsonDecode(response.body) as Map<String, dynamic>; 

    //get properti from data
    String dateTime = data['datetime'];
    String offset = data['utc_offset'].toString().substring(1,3);

    //create DateTime object
    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offset)));


    //set the time property
    time = now.toString();

   }
   catch (e){ 
     print('caught error: $e');     
     time = 'Could not get data';
   }

  }

}


