import 'package:flutter/material.dart';
import 'package:lsp/home.dart';

class pengaturan extends StatelessWidget {
  const pengaturan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
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
                TextField(),
                SizedBox(height: 20),
                Text("Password Baru"),
                TextField(),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
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
                      'Kembali',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 270,
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
                                'About this app ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                ),
                                child: Text(
                                  'Nama: Alfina Nur A',
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
                                  'NIM: 2131764064',
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
                                  'Tanggal: 29-09-2023',
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
                            Icons.account_circle,
                            color: Colors.grey,
                            size: 100,
                          ),
                        ],
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
