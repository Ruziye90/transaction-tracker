class Transaction {
  final String date;
  final double amount;
  final String description;

  Transaction({required this.date, required this.amount, required this.description});

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'amount': amount,
      'description': description,
    };
  }


  fromJson(Map<String, dynamic> json) {
    return Transaction(
        date: json['date'] as String,
        amount: (json['amount'] as num).toDouble(),
        description: json['description'] as String
    );
  }
}