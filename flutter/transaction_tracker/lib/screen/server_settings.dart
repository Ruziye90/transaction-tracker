import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transaction_tracker/constant/api_constants.dart';
import 'package:transaction_tracker/screen/login_screen.dart';
import 'package:transaction_tracker/screen/widget/button.dart';




class ServerSettings extends StatefulWidget {
  const ServerSettings({Key? key}) : super(key: key);

  @override
  State<ServerSettings> createState() => _ServerSettingsState();
}

class _ServerSettingsState extends State<ServerSettings> {
  var serverIpAddressController = TextEditingController();
  var portNumberController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: MyButton(
                  width: 250,
                  buttonName: "LOAD FROM CONFIG FILE",
                  onPressed: () async {
                    // Map<String, dynamic> config = await ConfigUtil.loadConfig();
                    // var ipAddress = config['ipAddress'];
                    // var portNumber = config['portNumber'];
                    // setState(() {
                    //   serverIpAddressController.text = ipAddress;
                    //   portNumberController.text = portNumber;
                    // });
                  }),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: serverIpAddressController,
              decoration: const InputDecoration(
                  labelText: 'Enter ip address for server',
                  hintStyle: TextStyle(
                      color: Colors.red
                  )
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: portNumberController,
              decoration: const InputDecoration(
                  labelText: 'Enter port number for server',
                  hintStyle: TextStyle(
                      color: Colors.red
                  )
              ),
            ),
            Center(
              child: MyButton(
                  buttonName: 'SAVE',
                  onPressed: () {
                    ApiConstants.setBaseUrl(serverIpAddressController.text, portNumberController.text);
                    Get.offAll(() => LoginPage());
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:transaction_tracker/screen/login_screen.dart';
// import 'package:transaction_tracker/screen/widget/button.dart';
//
// import '../util/config_util.dart';
//
//
//
// class ServerSettings extends StatefulWidget {
//   const ServerSettings({Key? key}) : super(key: key);
//
//   @override
//   State<ServerSettings> createState() => _ServerSettingsState();
// }
//
// class _ServerSettingsState extends State<ServerSettings> {
//   var serverIpAddressController = TextEditingController();
//   var portNumberController = TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: MyButton(
//                   width: 250,
//                   buttonName: "LOAD FROM CONFIG FILE",
//                   onPressed: () async {
//                     Map<String, dynamic> config = await ConfigUtil.loadConfig();
//                     var ipAddress = config['ipAddress'];
//                     var portNumber = config['portNumber'];
//                     setState(() {
//                       serverIpAddressController.text = ipAddress;
//                       portNumberController.text = portNumber;
//                     });
//                   }),
//             ),
//             const SizedBox(height: 10,),
//             TextFormField(
//               controller: serverIpAddressController,
//               decoration: const InputDecoration(
//                   labelText: 'Enter ip address for server',
//                   hintStyle: TextStyle(
//                       color: Colors.red
//                   )
//               ),
//             ),
//             const SizedBox(height: 10,),
//             TextFormField(
//               controller: portNumberController,
//               decoration: const InputDecoration(
//                   labelText: 'Enter port number for server',
//                   hintStyle: TextStyle(
//                       color: Colors.red
//                   )
//               ),
//             ),
//             Center(
//               child: MyButton(
//                   buttonName: 'SAVE',
//                   onPressed: () {
//                     ConfigUtil.saveConfig(serverIpAddressController.text, portNumberController.text);
//                     Get.offAll(() => LoginPage());
//                   }
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }