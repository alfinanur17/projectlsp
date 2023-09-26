import 'package:flutter/material.dart';

class detail_cash_flow extends StatefulWidget {
  const detail_cash_flow({Key? key}) : super(key: key);

  @override
  State<detail_cash_flow> createState() => _detail_cash_flowState();
}

class _detail_cash_flowState extends State<detail_cash_flow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Cash flow'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Halaman detail cash flow'),
          ],
        ),
      ),
    );
  }
}
