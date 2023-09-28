import 'package:flutter/material.dart';
import 'package:lsp/tambah_pemasukan.dart';
import 'package:lsp/tambah_pengeluaran.dart';
import 'package:lsp/detail_cash_flow.dart';
import 'package:lsp/pengaturan.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Beranda"),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const tambah_pemasukan()));
              },
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Image(
                          image: AssetImage('pemasukan.jpg'),
                          height: 75,
                          width: 75,
                        ),
                      ),
                    ),
                    Text("Tambah Pemasukan", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const tambah_pengeluaran()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Image(
                          image: AssetImage('pengeluaran.jpg'),
                          height: 75,
                          width: 75,
                        ),
                      ),
                    ),
                    Text("Tambah Pengeluaran",
                        style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const detail_cash_flow()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Image(
                          image: AssetImage('flow.jpg'),
                          height: 75,
                          width: 75,
                        ),
                      ),
                    ),
                    Text("Detail Cash Flow", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const pengaturan()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Image(
                          image: AssetImage('setting.jpg'),
                          height: 75,
                          width: 75,
                        ),
                      ),
                    ),
                    Text("Pengaturan", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
