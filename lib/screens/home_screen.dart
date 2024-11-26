import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/transactions_provider.dart';
import '../widgets/summary_card.dart';
import '../widgets/transaction_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          children: [
            // Small Logo
            Image.asset(
              'assets/logo-removebg-preview.png',
              height: 30,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 20),
            Text('Personal Finance App', style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          // Foreground Content
          Column(
            children: [
              SummaryCard(),
              Expanded(child: TransactionList()),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add, color: Colors.white,),
        onPressed: () {
          Navigator.of(context).pushNamed('/add-transaction');
        },
      ),
    );
  }
}
