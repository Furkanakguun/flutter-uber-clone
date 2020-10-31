import 'package:connectivity/connectivity.dart';
import 'package:geetaxi/helpers/requesthelper.dart';
import 'package:geolocator/geolocator.dart';

class HelperMethods{

static Future<String> findCordinateAddress(Position position) async{

  String placeAddress = '';

  var connectivityResult = await Connectivity().checkConnectivity();
  if(connectivityResult != ConnectivityResult.mobile && connectivityResult != ConnectivityResult.wifi){
    return placeAddress;
  }
  String url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=AIzaSyBx18r9ueadCXoGIhu01PYFYnMqPZYO0QI';

  var response = await RequestHelper.getRequest(url);

  if(response != 'failed'){
    placeAddress = response['results'][0]['formatted_address'];
  }
  return placeAddress;
}

}