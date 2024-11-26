import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;

  TransactionItem({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(
          transaction.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(transaction.date.toString()),
        trailing: Text(
          transaction.amount > 0
              ? '+${transaction.amount.toStringAsFixed(2)}' // Add '+' for positive
              : '-${transaction.amount.abs().toStringAsFixed(2)}', // Keep '-' for negative
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: transaction.amount > 0 ? Colors.green : Colors.red,
          ),
        ),
      ),
    );
  }
}
