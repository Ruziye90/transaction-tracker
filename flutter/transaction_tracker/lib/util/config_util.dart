// import 'dart:convert';
// import 'dart:io';
// import 'package:get/get.dart';
// import 'package:path_provider/path_provider.dart';
//
// class ConfigUtil {
//
//   static Future<Map<String, dynamic>> loadConfig() async {
//
//
//     try{
//       final directory = await getApplicationDocumentsDirectory();
//       final file = File('${directory.path}/config.json');
//
//       if (await file.exists()) {
//         final configJson = await file.readAsString();
//         return jsonDecode(configJson);
//       } else {
//         // Create a default config
//         final defaultConfig = {
//           'ipAddress': '127.0.0.1',
//           'portNumber': '8080'
//         };
//         final defaultConfigJson = jsonEncode(defaultConfig);
//
//         await file.writeAsString(defaultConfigJson);
//
//         return defaultConfig;
//       }
//     } catch (e) {
//       Get.snackbar("Error", e.toString());
//     }
//     return {};
//   }
//
//   static void saveConfig(String ipAddress, String portNumber) async {
//     final directory = await getApplicationDocumentsDirectory();
//     final file = File('${directory.path}/config.json');
//
//     final configData = {
//       'ipAddress': ipAddress,
//       'portNumber': portNumber
//     };
//     final configJson = jsonEncode(configData);
//
//     await file.writeAsString(configJson);
//
//     Get.snackbar("Server settings saved",
//         "Ip Address: $ipAddress\nPort Number: $portNumber");
//   }
//
// }
//
//
// // import 'dart:convert';
// // import 'dart:io';
// // import 'package:get/get.dart';
// // import 'package:path_provider/path_provider.dart';
// //
// // class ConfigUtil {
// //
// //   static Future<Map<String, dynamic>> loadConfig() async {
// //     try{
// //       final directory = await getApplicationDocumentsDirectory();
// //       final file = File('${directory.path}/config.json');
// //
// //       if (await file.exists()) {
// //         final configJson = await file.readAsString();
// //         return jsonDecode(configJson);
// //       } else {
// //         // Create a default config
// //         final defaultConfig = {
// //           'ipAddress': '127.0.0.1',
// //           'portNumber': '8080'
// //         };
// //         final defaultConfigJson = jsonEncode(defaultConfig);
// //
// //         await file.writeAsString(defaultConfigJson);
// //
// //         return defaultConfig;
// //       }
// //     } catch (e) {
// //       Get.snackbar("Error", e.toString());
// //     }
// //     return {};
// //   }
// //
// //   static void saveConfig(String ipAddress, String portNumber) async {
// //     final directory = await getApplicationDocumentsDirectory();
// //     final file = File('${directory.path}/config.json');
// //
// //     final configData = {
// //       'ipAddress': ipAddress,
// //       'portNumber': portNumber
// //     };
// //     final configJson = jsonEncode(configData);
// //
// //     await file.writeAsString(configJson);
// //
// //     Get.snackbar("Server settings saved",
// //         "Ip Address: $ipAddress\nPort Number: $portNumber");
// //   }
// //
// // }