import 'package:flutter/material.dart';
import 'package:lsp/home.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Buku Kas'),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Image(
                      image: AssetImage('logo.jpg'),
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
                Text("Username"),
                TextField(),
                Text("Password"),
                TextField(),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Text("LOGIN")),
              ],
            )),
      ),
    );
  }
}
