import 'package:get/get.dart';

class ConfigController extends GetxController {
  var config = {}.obs;

  void addConfigSettings(String ipAddress, String portNumber) {
    Map<String, String> myMap = {
      'ipAddress': ipAddress,
      'portNumber': portNumber
    };
    config = RxMap<dynamic, dynamic>(myMap);
  }

}