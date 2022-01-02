import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import './transaction.dart';

void main() {
  runApp(const ExPlan());
}

class ExPlan extends StatefulWidget {
  const ExPlan({Key? key}) : super(key: key);

  @override
  _ExPlanState createState() => _ExPlanState();
}

class _ExPlanState extends State<ExPlan> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 'fdb4ca3',
      title: 'Luxe Nano MOD',
      ammount: 70.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2c8f93f',
      title: 'Target Mini II MOD',
      ammount: 45.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3e25d2f',
      title: 'GTX POD 22/26',
      ammount: 11.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: '4c47482',
      title: 'Target PM30',
      ammount: 29.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: '0c60135',
      title: 'Revenger X',
      ammount: 92.90  ,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ExPlan',
      home: Scaffold(
        backgroundColor: HexColor('#F4F2F1'),
        appBar: AppBar(
            title: Align(
              alignment: Alignment.center,
              child: Text(
                'ExPlan',
                style: TextStyle(
                  color: HexColor('#F4F2F1'),
                ),
              ),
            ),
            backgroundColor: HexColor('#6B3C6A')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: const SizedBox(
                child: Text('Chart'),
              ),
              color: HexColor('#6B3C6A'),
            ),
            Column(
              children: _transactions.map((_transaction) {
                return Card(
                  elevation: 2,
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: HexColor('#B879B7'),
                            width: 2,
                          )),
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Text(
                            _transaction.ammount.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: HexColor('#B879B7'),
                            ),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _transaction.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: HexColor('#555555')),
                          ),
                          Text(_transaction.date.toString(),
                              style: const TextStyle(color: Colors.grey))
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
