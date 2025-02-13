import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transaction_tracker/screen/transaction_view_screen.dart';
import 'package:transaction_tracker/screen/widget/settings_dropdown.dart';
import 'package:transaction_tracker/service/transaction_service.dart';
import 'package:transaction_tracker/service/user_service.dart';

class LoginPage extends StatelessWidget {
  final TransactionApiService apiService = TransactionApiService();
  final UserService userService = UserService();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TRANSACTION TRACKER APP'),
        actions: const [
          Settings()
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic

                  userService.login(usernameController.text, passwordController.text);
                  //Get.to(() => TransactionListPage(apiService: apiService,));
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}