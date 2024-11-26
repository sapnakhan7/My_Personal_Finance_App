import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home_screen.dart';
import './screens/add_transaction_screen.dart';
import './providers/transactions_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => TransactionsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Personal Finance App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomeScreen(),
        routes: {
          '/add-transaction': (ctx) => AddTransactionScreen(),
        },
      ),
    );
  }
}
