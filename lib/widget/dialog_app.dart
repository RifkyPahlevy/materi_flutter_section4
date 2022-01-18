import 'package:flutter/material.dart';

void main() {
  runApp(DialogApp());
}

class DialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dialog App'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      //Widget RoundedRectangleBorder untuk mengatur border radius
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(15)),
                    ),
                    title: Text('Halo Kamu'),
                    content: Text('Halo ini adalah deskripsi dialog'),
                    actions: [
                      ElevatedButton(onPressed: () {}, child: Text('Cancel')),
                      ElevatedButton(onPressed: () {}, child: Text('Exit')),
                    ],
                  );
                },
              );
            },
            child: Text('Tombol Dialog')),
      ),
    );
  }
}
