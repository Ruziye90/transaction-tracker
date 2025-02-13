import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transaction_tracker/service/transaction_service.dart';

import '../controller/transaction_controller.dart';

class TransactionListPage extends StatelessWidget {

  final TransactionController transactionController;
  TransactionListPage({super.key, required TransactionApiService apiService})
      : transactionController = Get.put(TransactionController(apiService));

  void _showAddTransactionForm() {
    String date = '';
    String amount = '';
    String description = '';

    Get.defaultDialog(
      title: 'Add Transaction',
      content: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Date'),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: Get.context!,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (pickedDate != null) {
                date = pickedDate.toLocal().toString().split(' ')[0]; // Format date
              }
            },
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Amount'),
            onChanged: (value) {
              amount = value;
            },
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Description'),
            onChanged: (value) {
              description = value;
            },
          ),
        ],
      ),
      confirm: TextButton(
        onPressed: () {
          transactionController.addTransaction(date, amount, description);
          Get.back(); // Close the dialog
        },
        child: Text('Add'),
      ),
      cancel: TextButton(
        onPressed: () {
          Get.back(); // Close the dialog
        },
        child: Text('Cancel'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction List'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: transactionController.transactions.length,
          itemBuilder: (context, index) {
            final transaction = transactionController.transactions[index];
            return Card(
              margin: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(transaction.date, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Text(transaction.amount.toString(), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Text(transaction.description, style: const TextStyle(fontSize: 14)),
                  ],
                ),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddTransactionForm,
        tooltip: 'Add Transaction',
        child: const Icon(Icons.add),
      ),
    );
  }
}