import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List<Transaction> transactions = [
    Transaction(title: 'Payment', amount: -500),
    Transaction(title: 'Deposit', amount: 1000),
    Transaction(title: 'Withdrawal', amount: -200),
    Transaction(title: 'Withdrawal', amount: -170),
    Transaction(title: 'Withdrawal', amount: -2678.0),
    Transaction(title: 'Withdrawal', amount: -200),
    Transaction(title: 'Deposit', amount: -496),
    Transaction(title: 'Withdrawal', amount: -1700),
    Transaction(title: 'Deposit', amount: -780),
    Transaction(title: 'Withdrawal', amount: -578.98),
    Transaction(title: 'Payment', amount: -1278.98),
    Transaction(title: 'Deposit', amount: -200),
    Transaction(title: 'Desposit', amount: -9076),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          Transaction transaction = transactions[index];
          return ListTile(
            leading: Icon(transaction.amount > 0 ? Icons.arrow_upward : Icons.arrow_downward),
            title: Text(transaction.title),
            subtitle: Text('\$${transaction.amount.abs()}'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Handle tapping on the transaction tile
            },
          );
        },
      ),
    );
  }
}

class Transaction {
  final String title;
  final double amount;

  Transaction({required this.title, required this.amount});
}
