import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:transaction_tracker/constant/api_constants.dart';

import '../model/transaction.dart';

class TransactionApiService {

  Future<bool> addTransaction(Transaction transaction) async {
    try {
      final response = await http.post(
        Uri.parse(ApiConstants.getTransactionApi()),
        headers: {
          'Accept': '*/*',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(transaction.toJson()),
      );
      if(response.statusCode == 201) {
        return true;
      } else {
        throw Exception('Failed to save transactions');
      }
    }
    on http.ClientException {
      throw http.ClientException(ApiConstants.clientExceptionErrorMessage);
    } catch (e) {
      throw Exception('Failed to save transactions: $e');
    }
  }

  Future<List<Transaction>> getAllTransaction() async {
    final url = Uri.parse(ApiConstants.getTransactionApi());
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body) as List<dynamic>;
        return jsonData.map((json) => Transaction(
          date: json['date'] ?? "",
          amount: json['amount'].toDouble(),
          description: json['description'],
        )).toList();
      } else {
        throw Exception('Failed to load transactions');
      }
    }
    on http.ClientException {
      throw http.ClientException(ApiConstants.clientExceptionErrorMessage);
    } catch (e) {
      throw Exception('Failed to load transactions: $e');
    }
  }
}