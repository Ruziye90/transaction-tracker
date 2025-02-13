import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:transaction_tracker/screen/transaction_view_screen.dart';
import 'package:transaction_tracker/service/transaction_service.dart';
import '../constant/api_constants.dart';



class UserService{

  final TransactionApiService apiService = TransactionApiService();


  Future<void> login(String username, String password) async {
    String titleOfSnackBar = "Login Failed";
    try {
      final response =
      await http.post(Uri.parse(ApiConstants.getUserApi()),
          headers: <String, String> {
            'Content-Type': 'application/json; charset=UTF-8'
          },
          body: jsonEncode(<String, dynamic> {
            "username": username,
            "password": password
          })
      );

      if(response.statusCode == 200) {
        Get.to(() => TransactionListPage(apiService: apiService,));
      } else {
        String message;
        if(username.isEmpty || password.isEmpty) {
          message = "empty";
        } else {
          message = "wrong";
        }
        Get.snackbar(titleOfSnackBar, "Either password or username or both are $message");
      }
    } on http.ClientException {
      throw http.ClientException(ApiConstants.clientExceptionErrorMessage);
    } catch (e) {
      Get.snackbar(titleOfSnackBar, e.toString());
    }

  }

}