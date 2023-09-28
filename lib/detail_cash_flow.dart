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
        backgroundColor: Colors.green,
        title: const Text('Detail Cash flow'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Detail Cash FLow',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rp. 50.000 ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Text(
                                'Bulanan',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Text(
                                '28-09-2023',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.upload,
                          color: Colors.green,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rp. 30.000 ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Text(
                                'Makan',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Text(
                                '29-09-2023',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.upload,
                          color: Colors.red,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
