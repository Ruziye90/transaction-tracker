import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config_screen.dart';


class Settings extends StatelessWidget {
  const Settings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (context){
          return [
            const PopupMenuItem<int>(
              value: 0,
              child: Text("Settings"),
            ),
            const PopupMenuItem<int>(
              value: 1,
              child: Text("Info"),
            ),
          ];
        },
        onSelected:(value) {
          if(value == 0){
            Get.to(() => const ConfigurationScreen());
          }else if(value == 1){
            // Get.to(() => const AboutStockTakeApp());
          }
        }
    );
  }
}
