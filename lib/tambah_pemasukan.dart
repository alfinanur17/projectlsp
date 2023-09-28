import 'package:flutter/material.dart';
import 'package:lsp/home.dart';

class tambah_pemasukan extends StatelessWidget {
  const tambah_pemasukan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Tambah Pemasukan'),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nominal"),
                TextField(),
                Text("Keterangan"),
                TextField(),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 20.0,
                    left: 10,
                    right: 10,
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.9,
                        40,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const tambah_pemasukan()));
                    },
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[100],
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.9,
                        40,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const tambah_pemasukan()));
                    },
                    child: Text(
                      'Simpan',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.9,
                        40,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Text(
                      '<< Kembali',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
