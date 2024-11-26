// setting up state management for my personal finance app

import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionsProvider with ChangeNotifier {
  final List<Transaction> _transactions = [];

  List<Transaction> get transactions => [..._transactions];

  double get totalIncome =>
      _transactions.where((tx) => tx.amount > 0).fold(0.0, (sum, tx) => sum + tx.amount);

  double get totalExpenses =>
      _transactions.where((tx) => tx.amount < 0).fold(0.0, (sum, tx) => sum + tx.amount);

  void addTransaction(String title, double amount) {
    _transactions.add(
      Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
