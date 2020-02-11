import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'transaction_list.dart';
import 'new_transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTansactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 1500, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Groceries', amount: 2000, date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTansactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(
          addNewTransaction: _addNewTransaction,
        ),
        TransactionList(
          transactions: _userTansactions,
        )
      ],
    );
  }
}
