import 'package:flutter/material.dart';

class tambah_pengeluaran extends StatelessWidget {
  const tambah_pengeluaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Pengeluaran'),
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
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text("Reset")),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text("Simpan")),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text("Kembali")),
              ],
            )),
      ),
    );
  }
}
