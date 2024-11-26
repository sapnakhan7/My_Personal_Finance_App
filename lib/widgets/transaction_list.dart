import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/transactions_provider.dart';
import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final transactions = Provider.of<TransactionsProvider>(context).transactions;

    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (ctx, index) => TransactionItem(transaction: transactions[index]),
    );
  }
}
