import 'package:flutter/material.dart';
import 'package:lsp/home.dart';

class pengaturan extends StatelessWidget {
  const pengaturan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan'),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Password Saat Ini"),
                SizedBox(height: 20),
                Text("***"),
                SizedBox(height: 20),
                Text("Password Baru"),
                TextField(),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Text("Simpan")),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Text("Kembali")),
                SizedBox(height: 20),
              ],
            )),
      ),
    );
  }
}
