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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            child: ListTile(
              title: Text("Rp. 20.000"),
              subtitle: Text("makan"),
              leading: Container(
                child: Icon(
                  Icons.upload,
                  color: Colors.red,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
