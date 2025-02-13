import 'package:flutter/material.dart';
import './server_settings.dart';


class ConfigurationScreen extends StatefulWidget {

  const ConfigurationScreen({
    super.key,
  });


  @override
  State<ConfigurationScreen> createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Configuration Settings")),
            bottom: const TabBar(tabs: [
              Tab(text: 'Server'),
            ]),
            automaticallyImplyLeading: true,
          ),
          body: const TabBarView(
              children: [
                ServerSettings()
              ]
          ),
        ),
      ),
    );
  }
}