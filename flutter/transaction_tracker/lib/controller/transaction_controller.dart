import 'package:get/get.dart';
import 'package:transaction_tracker/service/transaction_service.dart';

import '../model/transaction.dart';

class TransactionController extends GetxController {
  var transactions = <Transaction>[].obs;
  final TransactionApiService transactionApiService;

  TransactionController(this.transactionApiService);

  @override
  void onInit() {
    super.onInit();
    fetchTransactions();
  }

  void addTransaction(String date, String amount, String description) async {
    double amountValue = double.tryParse(amount) ?? 0.0;
    Transaction transaction = Transaction(date: date, amount: amountValue, description: description);

    bool success = await transactionApiService.addTransaction(transaction);
    if (success) {
      transactions.add(transaction);
      Get.snackbar('Success', 'Transaction successfully added');
    } else {
      Get.snackbar('Error', 'Failed to add transaction');
    }
  }

  Future<void> fetchTransactions() async {
    try {
      List<Transaction> fetchedTransactions = await transactionApiService.getAllTransaction();
      transactions.assignAll(fetchedTransactions);
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch transactions: $e');
    }
  }
}